import json
import os
import shutil

#################################################### CONFIG ##########################################################

# Pack name and Author
pack_name = 'Saffron Dev'
pack_author = 'LaidBackSloth42'

# Files to copy to the output zips
files_to_copy = [
    'config',
    'defaultconfigs',
    'fancymenu_setups',
    'global_packs',
    'patchouli_books',
    'scripts',
    'credits.txt',
    'license.txt',
    'resourcepacks/Saffron Dark',
    'resourcepacks/Saffron Tips',

    'ship'
]

# Files to not copy to the output zips
blacklisted_files = [
    'config/jei/ingredient-list-mod-sort-order.ini',
    'config/jei/ingredient-list-type-sort-order.ini',
    'config/jei/recipe-category-sort-order.ini',
    'config/jei/bookmarks.ini',
]

# Directory settings
temp_dir = '.ship_temp'
overrides_dir = temp_dir + '/overrides'
out_dir = 'ship/output-dev'
ship_dir = 'ship'

default_overrides_dir = 'ship/default-overrides'


######################################################################################################################

def main():
    version = input('Modpack Version: ')
    print('Building', pack_name, 'version', version)
    build_pack(version)


def build_pack(version):
    ensure_directory()
    cleanup()

    minecraftinstance_data = load_instance_data()
    ship_client(minecraftinstance_data, version)

    shutil.rmtree('.ship_temp')


def cleanup():
    clear_dir(temp_dir)
    clear_dir(overrides_dir)
    clear_dir(out_dir)


def ship_client(minecraftinstance_data, version):
    print("Shipping Client...")
    copy_files(files_to_copy, '', overrides_dir)

    copy_files(os.listdir(default_overrides_dir), default_overrides_dir + "/", overrides_dir)

    clear_files(overrides_dir, blacklisted_files)
    make_manifests(minecraftinstance_data, version)
    zip_files(temp_dir, version, '')


##################################################################################################################################
def load_instance_data():
    with open('minecraftinstance.json', 'r', encoding="utf-8") as in_file:
        minecraftinstance_data = json.load(in_file)
        return minecraftinstance_data


# Ensure we're working in the right directory
def ensure_directory():
    for f in files_to_copy:
        if not os.path.isdir(f):
            os.chdir('..')
            break


# Clear out old dir, make new one
def clear_dir(dir_name):
    if os.path.isdir(dir_name):
        shutil.rmtree(dir_name)
    os.mkdir(dir_name)


# Copy relevant files
def copy_files(arr, in_dir, out_dir):
    for f in arr:
        target = in_dir + f
        out_path = out_dir + '/' + f
        if os.path.isdir(target):
            shutil.copytree(target, out_path, dirs_exist_ok=True)
        else:
            shutil.copy(target, out_path)


# Delete blacklisted files
def clear_files(dir_name, blacklist):
    for f in blacklist:
        target = dir_name + '/' + f
        if os.path.isdir(target):
            shutil.rmtree(target)
        elif os.path.exists(target):
            os.remove(target)


# Build and write manifest.json
def make_manifests(minecraftinstance_data, version):
    modloader = minecraftinstance_data['baseModLoader']
    forge_ver = modloader['name']
    mc_ver = modloader['minecraftVersion']

    manifest_files = []
    addons = minecraftinstance_data['installedAddons']

    installed_files = [a for a in addons if a['installedFile']]
    curr = len(installed_files)

    print('Making pack manifest with', curr, 'mods...')

    for addon in addons:
        installed_file = addon['installedFile']

        manifest_files.append({
            'projectID': addon['addonID'],
            'fileID': installed_file['id'],
            'required': True
        })

    out_manifest = {
        'minecraft': {
            'version': mc_ver,
            'modLoaders': [
                {
                    'id': forge_ver,
                    'primary': True
                }
            ]
        },
        'manifestType': 'minecraftModpack',
        'manifestVersion': 1,
        'name': pack_name,
        'version': version,
        'author': pack_author,
        'files': manifest_files,
        'overrides': 'overrides'
    }

    with open(temp_dir + '/manifest.json', 'w') as out_file:
        json.dump(out_manifest, out_file, indent=2)


def zip_files(src_dir, version, denom):
    out_file = out_dir + '/' + pack_name.replace(' ', '_') + '-' + version + denom
    shutil.make_archive(out_file, 'zip', src_dir)


############################################################################################################

main()

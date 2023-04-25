import json
import os
import shutil

#################################################### CONFIG ##########################################################

# Pack name and Author
pack_name = 'Saffron Create'
pack_author = 'LaidBackSloth42'

# Patchouli book file, leave blank if not used
book_file = 'patchouli_books/saffron_guide_book/book.json'

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
    'resourcepacks/Saffron Tips'
]

# Files to not copy to the output zips
blacklisted_files = [
    'config/jei/ingredient-list-mod-sort-order.ini',
    'config/jei/ingredient-list-type-sort-order.ini',
    'config/jei/recipe-category-sort-order.ini',
    'config/jei/bookmarks.ini',

    'scripts/base_addon.zs'
]

# Additional files to copy to the server zip
server_files_to_copy = [
    'setup-server.bat',
    'setup-server.sh',
    'SERVER_README.txt',
    'server-credits.txt',
    'server-icon.png',
    'server.properties'
]

mods_blacklist = [
    'Structured Crafting'
]

tips_blacklist = [
    'automated_block_placing',
    'automated_block_breaking',
    'automated_crafting'
]

# Mods to not include in the server zip
server_mods_blacklist = [
    'Skin Layers 3D (Fabric/Forge)',
    'Auudio [Forge]',
    'Better Advancements',
    'BetterF3',
    'Better Mods Button',
    'Better Ping Display',
    'Better Statistics Screen (Fabric/Forge)',
    'Better Third Person',
    'Boat Item View (Forge)',
    'Better Brightness Slider',
    'Bad Wither No Cookie - Reloaded',
    'CleanView',
    'Client Tweaks',
    'Configured',
    'Controlling',
    'Default Options',
    'Delete Worlds To Trash [Forge]',
    'Ding (Forge)',
    'Drippy Loading Screen [Forge]',
    'Durability Tooltip',
    'Magnesium/Rubidium Dynamic Lights',
    'Eating Animation [Forge]',
    'EffectsLeft',
    'Entity Culling Fabric/Forge',
    'Extreme sound muffler (Forge)',
    'Falling Leaves (Forge)',
    'FancyMenu [Forge]',
    'Farsight [Forge]',
    'FPS Reducer',
    'Item Highlighter [Forge]',
    'Leave My Bars Alone',
    'Inventory HUD+',
    "It's the little things",
    'JEI Enchantment Info',
    'Konkrete [Forge]',
    'Lightspeed - Launch optimizations',
    'Model Gap Fix',
    'Mod Name Tooltip',
    'More Overlays Updated',
    'Mouse Tweaks',
    "Neko's Enchanted Books",
    'Not Enough Animations',
    'Notes',
    'Raised',
    'Rebind Narrator',
    'Magnesium/Rubidium Extras',
    'Rubidium',
    'Sheep Consistency (Unofficial Forge Port)',
    'Simple Discord RPC [Forge/Fabric/Quilt]',
    'Tips',
    'Toast Control',
    'Wavey Capes',

    'Created Simple Storage Network',
    'Quark Vanilla Resource Overrides',
    'Tool Belt Retextured',
    'Unity: Dark Edition',
    'Vanilla Tweaks Banner Support',
    "Xaero's Minimap - Modded Support",

    'Structured Crafting'
]

# Files to not copy to the server zip
server_blacklisted_files = [
    'config/defaultoptions',
    'config/fancymenu',
    'config/drippyloadingscreen',
    'config/itlt',
    'fancymenu_setups',
    'global_packs/required_resources',
    'credits.txt',
    'resourcepacks'
]

# Directory settings
temp_dir = '.ship_temp'
overrides_dir = temp_dir + '/overrides'
out_dir = 'ship/output-create'
ship_dir = 'ship'


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
    ship_server(minecraftinstance_data, version)

    shutil.rmtree('.ship_temp')


def cleanup():
    clear_dir(temp_dir)
    clear_dir(overrides_dir)
    clear_dir(out_dir)


def ship_client(minecraftinstance_data, version):
    print("Shipping Client...")
    copy_files(files_to_copy, '', overrides_dir)
    clear_files(overrides_dir, blacklisted_files)
    delete_tips()
    update_book(version)
    update_better_compatibility_checker(version)
    make_manifests(minecraftinstance_data, version)
    zip_files(temp_dir, version, '');


def ship_server(minecraftinstance_data, version):
    print("Shipping Server...")
    copy_files(server_files_to_copy, 'ship/', overrides_dir)
    clear_files(overrides_dir, server_blacklisted_files)
    write_mods_csv(minecraftinstance_data)
    zip_files(overrides_dir, version, '-server');


##################################################################################################################################

def load_instance_data():
    with open('minecraftinstance.json', 'r', encoding="utf-8") as in_file:
        minecraftinstance_data = json.load(in_file)
        return minecraftinstance_data


def server_download_files(minecraftinstance_data):
    return format_mod_array(minecraftinstance_data, server_mods_blacklist, server_download_obj)


def server_download_obj(installed_file):
    url = installed_file['downloadUrl']
    filename = 'mods/' + installed_file['fileName']
    if filename.endswith('.zip'):
        filename = 'resourcepacks/' + installed_file['fileName']
    return {
        'url': url,
        'filename': filename
    }


def format_mod_array(minecraftinstance_data, blacklist, format):
    formatted_array = []
    handled_blacklist = []
    addons = minecraftinstance_data['installedAddons']
    for addon in addons:
        installed_file = addon['installedFile']
        mod_name = addon['name']

        if not (mod_name in blacklist):
            mod_obj = format(installed_file)
            formatted_array.append(mod_obj)
        else:
            handled_blacklist.append(mod_name)

    for b in blacklist:
        if not (b in handled_blacklist):
            print("Blacklist didn't work for: " + b)

    return formatted_array


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


# Update book.json with correct version
def update_book(version):
    if not book_file:
        pass

    with open(book_file, 'r') as in_file:
        book_data = json.load(in_file)
        book_data['subtitle'] = ("Version " + version)

        with open(overrides_dir + '/' + book_file, 'w') as out_file:
            json.dump(book_data, out_file, indent=4)


def update_better_compatibility_checker(version):
    with open(overrides_dir + '/config/bcc-common.toml', 'w') as in_file:
        in_file.write(
            '#General settings\n[general]\n#The CurseForge project ID for the modpack\n#Range: > 0\nmodpackProjectID = 652279\n#The name of the modpack\nmodpackName = "' + pack_name + '"\n#The version of the modpack\nmodpackVersion = "'
            + version + '"\n#Use the metadata.json to determine the modpack version\n#ONLY ENABLE THIS IF YOU KNOW WHAT YOU ARE DOING\nuseMetadata = false'
        )
        in_file.close()


def delete_tips():
    for t in tips_blacklist:
        os.remove(overrides_dir + "/resourcepacks/Saffron Tips/assets/saffron/tips/" + t + ".json")
        os.remove(overrides_dir + "/patchouli_books/saffron_guide_book/en_us/entries/tips/" + t + ".json")


# Build and write manifest.json
def make_manifests(minecraftinstance_data, version):
    modloader = minecraftinstance_data['baseModLoader']
    forge_ver = modloader['name']
    mc_ver = modloader['minecraftVersion']

    manifest_files = []
    addons = minecraftinstance_data['installedAddons']

    installed_files = [a for a in addons if a['installedFile']]
    curr = len(installed_files) - len(mods_blacklist)

    print('Making pack manifest with', curr, 'mods...')

    handled_blacklist = []

    for addon in addons:
        mod_name = addon['name']

        if not (mod_name in mods_blacklist):
            installed_file = addon['installedFile']

            manifest_files.append({
                'projectID': addon['addonID'],
                'fileID': installed_file['id'],
                'required': True
            })
        else:
            handled_blacklist.append(mod_name)

    for b in mods_blacklist:
        if not (b in handled_blacklist):
            print("Blacklist didn't work for: " + b)

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


def write_mods_csv(minecraftinstance_data):
    download_files = server_download_files(minecraftinstance_data)

    modloader = minecraftinstance_data['baseModLoader']
    mc_ver = modloader['minecraftVersion']

    forge_ver = mc_ver + '-' + modloader['forgeVersion']
    forge_filename = 'forge-' + forge_ver + '-installer.jar'
    forge_url = 'https://files.minecraftforge.net/maven/net/minecraftforge/forge/' + forge_ver + '/' + forge_filename
    download_files.insert(0, {
        'url': forge_url,
        'filename': 'forge-installer.jar'
    })

    with open(overrides_dir + '/mods.csv', 'w') as out_file:
        for mod in download_files:
            out_file.write(mod['url'].replace(' ', '%20') + ',' + mod['filename'].replace(' ', '_') + '\n')


def zip_files(src_dir, version, denom):
    out_file = out_dir + '/' + pack_name.replace(' ', '_') + '-' + version + denom
    shutil.make_archive(out_file, 'zip', src_dir)


############################################################################################################

main()

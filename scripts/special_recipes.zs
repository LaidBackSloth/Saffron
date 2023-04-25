#priority 90

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;

//corail woodcutter implementation
function addWoodcutterRecipe(input as IIngredient, output as IItemStack, amount as int) as void {
    <recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("woodcutting/" + input.items[0].registryName.namespace + "-" + input.items[0].registryName.path + "_to_" + output.registryName.namespace + "-" + output.registryName.path, {
        "ingredient": input,
        "result": output.registryName,
        "count": amount
    });
}

function framed(output as IItemStack, amount as int) as void {
    addWoodcutterRecipe(<item:framedblocks:framed_cube>, output, amount);
    <tag:items:framedblocks:framed_blocks>.addId(output.registryName);
}

function addWoodRecipes(name as string, mod as string) as void {
    var isStem = name == "crimson" || name == "warped" || name == "sythian";

    var planks = name == "mangrove" && mod == "byg" ? <tagmanager:items>.tag(<resource:forge:planks/white_mangrove>) : <tagmanager:items>.tag(<resource:forge:planks/${name}>);
    var logs = isStem || name == "bulbis" || name == "imparius" ? <tagmanager:items>.tag(<resource:${mod}:${name}_stems>) : name == "embur" ? <tagmanager:items>.tag(<resource:${mod}:${name}_pedus>) : <tagmanager:items>.tag(<resource:${mod}:${name}_logs>);
    var planks_item = <item:${mod}:${name}_planks>;
    var slab = mod == "quark" ? <item:quark:${name}_planks_slab> : <item:${mod}:${name}_slab>;
    var stairs = mod == "quark" ? <item:quark:${name}_planks_stairs> : <item:${mod}:${name}_stairs>;
    var door = <item:${mod}:${name}_door>;
    var trapdoor = <item:${mod}:${name}_trapdoor>;
    var fence = <item:${mod}:${name}_fence>;
    var fence_gate = <item:${mod}:${name}_fence_gate>;
    var button = <item:${mod}:${name}_button>;
    var pressure_plate = <item:${mod}:${name}_pressure_plate>;

    if (name != "embur") {
        var vertical_planks = mod == "minecraft" || mod == "quark" ? <item:quark:vertical_${name}_planks> : <item:everycomp:q/${mod}/vertical_${name}_planks>;
        var ladder = name == "oak" ? <item:minecraft:ladder> : mod == "minecraft" || mod == "quark" ? <item:quark:${name}_ladder> : <item:everycomp:q/${mod}/${name}_ladder>;
        var beam = mod == "minecraft" ? <item:decorative_blocks:${name}_beam> : <item:everycomp:db/${mod}/${name}_beam>;
        var support = mod == "minecraft" ? <item:decorative_blocks:${name}_support> : <item:everycomp:db/${mod}/${name}_support>;
        var palisade = mod == "minecraft" ? <item:decorative_blocks:${name}_palisade> : <item:everycomp:db/${mod}/${name}_palisade>;
        var seat = mod == "minecraft" ? <item:decorative_blocks:${name}_seat> : <item:everycomp:db/${mod}/${name}_seat>;
        var sign_post = mod == "minecraft" ? <item:supplementaries:sign_post_${name}> : <item:supplementaries:${mod}/sign_post_${name}>;
        var shutter = mod == "minecraft" ? <item:another_furniture:${name}_shutter> : <item:everycomp:af/${mod}/${name}_shutter>;
        var table_af = mod == "minecraft" ? <item:another_furniture:${name}_table> : <item:everycomp:af/${mod}/${name}_table>;
        var chair = mod == "minecraft" ? <item:another_furniture:${name}_chair> : <item:everycomp:af/${mod}/${name}_chair>;
        var shelf = mod == "minecraft" ? <item:another_furniture:${name}_shelf> : <item:everycomp:af/${mod}/${name}_shelf>;
        var path = mod == "minecraft" ? <item:mcwpaths:${name}_planks_path> : <item:everycomp:mcp/${mod}/${name}_planks_path>;

        planks.addId(vertical_planks.registryName);
        <tag:items:minecraft:planks>.addId(vertical_planks.registryName);
        logs.addId(beam.registryName);
        <tag:items:minecraft:logs>.addId(beam.registryName);
        <tag:items:minecraft:logs_that_burn>.addId(beam.registryName);

        addWoodcutterRecipe(logs, vertical_planks, 4);
        addWoodcutterRecipe(planks_item, vertical_planks, 1);
        addWoodcutterRecipe(vertical_planks, planks_item, 1);
        addWoodcutterRecipe(logs, ladder, 4);
        addWoodcutterRecipe(planks, ladder, 1);

        addWoodcutterRecipe(logs, mod == "minecraft" ? <item:twigs:${name}_table> : <item:everycomp:tw/${mod}/${name}_table>, 1);

        addWoodcutterRecipe(logs, beam, 1);
        addWoodcutterRecipe(logs, palisade, 4);
        addWoodcutterRecipe(planks, palisade, 1);
        addWoodcutterRecipe(logs, support, 4);
        addWoodcutterRecipe(planks, support, 1);
        addWoodcutterRecipe(logs, seat, 4);
        addWoodcutterRecipe(planks, seat, 1);

        addWoodcutterRecipe(logs, sign_post, 4);
        addWoodcutterRecipe(planks, sign_post, 1);
        if (mod != "byg") {
            craftingTable.remove(sign_post);
            craftingTable.addShaped(sign_post.registryName.namespace + "-" + sign_post.registryName.path, sign_post * 3,
            [[planks_item, planks_item, planks_item],
            [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);
        }

        addWoodcutterRecipe(logs, shutter, 4);
        addWoodcutterRecipe(planks, shutter, 1);
        addWoodcutterRecipe(logs, table_af, 4);
        addWoodcutterRecipe(planks, table_af, 1);
        addWoodcutterRecipe(logs, chair, 4);
        addWoodcutterRecipe(planks, chair, 1);
        addWoodcutterRecipe(logs, shelf, 4);
        addWoodcutterRecipe(planks, shelf, 1);

        addWoodcutterRecipe(logs, path, 24);
        addWoodcutterRecipe(planks, path, 6);

        addWoodcutterRecipe(logs, mod == "minecraft" ? <item:mcwfences:${name}_picket_fence> : <item:everycomp:mcf/${mod}/${name}_picket_fence>, 1);
        addWoodcutterRecipe(logs, mod == "minecraft" ? <item:mcwfences:${name}_stockade_fence> : <item:everycomp:mcf/${mod}/${name}_stockade_fence>, 1);
        addWoodcutterRecipe(logs, mod == "minecraft" ? <item:mcwfences:${name}_horse_fence> : <item:everycomp:mcf/${mod}/${name}_horse_fence>, 1);
        addWoodcutterRecipe(logs, mod == "minecraft" ? <item:mcwfences:${name}_pyramid_gate> : <item:everycomp:mcf/${mod}/${name}_pyramid_gate>, 1);
        addWoodcutterRecipe(logs, mod == "minecraft" ? <item:mcwfences:${name}_highley_gate> : <item:everycomp:mcf/${mod}/${name}_highley_gate>, 1);
        addWoodcutterRecipe(logs, mod == "minecraft" ? <item:mcwbridges:${name}_log_bridge_middle> : <item:everycomp:mcb/${mod}/${name}_log_bridge_middle>, 1);
        addWoodcutterRecipe(logs, mod == "minecraft" ? <item:mcwbridges:${name}_rail_bridge> : <item:everycomp:mcb/${mod}/${name}_rail_bridge>, 1);
        addWoodcutterRecipe(logs, mod == "minecraft" ? <item:mcwbridges:${name}_log_bridge_stair> : <item:everycomp:mcb/${mod}/${name}_log_bridge_stair>, 1);

        if (mod != "twigs") {
            var post = mod == "minecraft" || mod == "quark" ? <item:quark:${name}_post> : <item:everycomp:q/${mod}/${name}_post>;
            addWoodcutterRecipe(logs, post, 4);
            addWoodcutterRecipe(planks, post, 1);
            addWoodcutterRecipe(logs, mod == "minecraft" ? <item:mcwbridges:${name}_bridge_pier> : <item:everycomp:mcb/${mod}/${name}_bridge_pier>, 1);
            if (name != "bulbis" && name != "imparius" && name != "sythian") {
                var stripped_post = mod == "minecraft" || mod == "quark" ? <item:quark:stripped_${name}_post> : <item:everycomp:q/${mod}/stripped_${name}_post>;
                addWoodcutterRecipe(logs, stripped_post, 4);
                addWoodcutterRecipe(planks, stripped_post, 1);
            }
        }

        if (mod != "minecraft" && mod != "quark") {
            var chest = <item:everycomp:q/${mod}/${name}_chest>;
            craftingTable.addShaped(chest.registryName.namespace + "/" + chest.registryName.path, chest * 4,
    	    [[logs, logs, logs],
            [logs, <item:minecraft:air>, logs],
            [logs, logs, logs]]);
            <tag:items:quark:boatable_chests>.addId(chest.registryName);
            <tag:items:quark:revertable_chests>.addId(chest.registryName);
            <tag:items:quark:revertable_trapped_chests>.addId(<resource:everycomp:q/${mod}/${name}_trapped_chest>);
        }
    }

    if (mod != "minecraft") {
        planks.addId(planks_item.registryName);
    }

    if (name != "crimson" && name != "warped" && name != "bulbis" && name != "ether" && name != "imparius" && name != "lament" && name != "nightshade" && name != "sythian" && name != "embur") {
        var boat = <item:${mod}:${name}_boat>;
        addWoodcutterRecipe(logs, boat, 1);
        if (mod != "minecraft") {
            <tag:items:minecraft:boats>.addId(boat.registryName);
        }
    }

    if (mod != "byg") {
        addWoodcutterRecipe(logs, <item:${mod}:${name}_sign>, 2);
    }

    if ((mod == "minecraft" || mod == "quark" || mod == "byg") && name != "oak") {
        addWoodcutterRecipe(logs, mod == "byg" ? <item:byg:${name}_crafting_table> : <item:mctb:${name}_crafting_table>, 1);
    } else {
        addWoodcutterRecipe(logs, <item:minecraft:crafting_table>, 1);
    }

    if (mod != "twigs") {
        var log_item = isStem || name == "bulbis" ? <item:${mod}:${name}_stem> : name == "embur" ? <item:byg:embur_pedu> : name == "imparius" ? <item:byg:fungal_imparius_stem> : <item:${mod}:${name}_log>;
        var stripped_log = isStem || name == "bulbis" ? <item:${mod}:stripped_${name}_stem> : name == "embur" ? <item:byg:stripped_embur_pedu> : name == "imparius" ? <item:byg:imparius_stem> : <item:${mod}:stripped_${name}_log>;
        var wood = isStem || name == "embur" ? <item:${mod}:${name}_hyphae> : name == "imparius" ? <item:byg:fungal_imparius_hyphae> : <item:${mod}:${name}_wood>;
        var stripped_wood = isStem || name == "embur" ? <item:${mod}:stripped_${name}_hyphae> : name == "imparius" ? <item:byg:imparius_hyphae> : <item:${mod}:stripped_${name}_wood>;

        addWoodcutterRecipe(log_item, stripped_log, 1);
        addWoodcutterRecipe(log_item, wood, 1);
        addWoodcutterRecipe(log_item, stripped_wood, 1);
        addWoodcutterRecipe(wood, stripped_log, 1);
        addWoodcutterRecipe(wood, log_item, 1);
        addWoodcutterRecipe(wood, stripped_wood, 1);
        addWoodcutterRecipe(stripped_log, stripped_wood, 1);
        addWoodcutterRecipe(stripped_wood, stripped_log, 1);
    }

    addWoodcutterRecipe(logs, planks_item, 4);
    addWoodcutterRecipe(logs, slab, 8);
    addWoodcutterRecipe(planks, slab, 2);
    addWoodcutterRecipe(logs, stairs, 4);
    addWoodcutterRecipe(planks, stairs, 1);
    addWoodcutterRecipe(logs, door, 4);
    addWoodcutterRecipe(planks, door, 1);
    addWoodcutterRecipe(logs, trapdoor, 4);
    addWoodcutterRecipe(planks, trapdoor, 1);
    addWoodcutterRecipe(logs, fence, 4);
    addWoodcutterRecipe(planks, fence, 1);
    addWoodcutterRecipe(logs, fence_gate, 4);
    addWoodcutterRecipe(planks, fence_gate, 1);
    addWoodcutterRecipe(logs, button, 4);
    addWoodcutterRecipe(planks, button, 1);
    addWoodcutterRecipe(logs, pressure_plate, 4);
    addWoodcutterRecipe(planks, pressure_plate, 1);
}

<recipetype:corail_woodcutter:woodcutting>.removeAll();

addWoodcutterRecipe(<tag:items:minecraft:logs>, <item:quark:stick_block>, 1);
addWoodcutterRecipe(<tag:items:minecraft:logs>, <item:minecraft:stick>, 8);
addWoodcutterRecipe(<tag:items:minecraft:logs>, <item:minecraft:bowl>, 4);
addWoodcutterRecipe(<tag:items:minecraft:planks>, <item:minecraft:stick>, 2);
addWoodcutterRecipe(<tag:items:minecraft:planks>, <item:minecraft:bowl>, 1);

addWoodcutterRecipe(<item:immersive_weathering:charred_log>, <item:immersive_weathering:charred_planks>, 4);
addWoodcutterRecipe(<item:immersive_weathering:charred_log>, <item:immersive_weathering:charred_slab>, 8);
addWoodcutterRecipe(<item:immersive_weathering:charred_planks>, <item:immersive_weathering:charred_slab>, 2);
addWoodcutterRecipe(<item:immersive_weathering:charred_log>, <item:immersive_weathering:charred_stairs>, 4);
addWoodcutterRecipe(<item:immersive_weathering:charred_planks>, <item:immersive_weathering:charred_stairs>, 1);
addWoodcutterRecipe(<item:immersive_weathering:charred_log>, <item:immersive_weathering:charred_fence>, 4);
addWoodcutterRecipe(<item:immersive_weathering:charred_planks>, <item:immersive_weathering:charred_fence>, 1);
addWoodcutterRecipe(<item:immersive_weathering:charred_log>, <item:immersive_weathering:charred_fence_gate>, 4);
addWoodcutterRecipe(<item:immersive_weathering:charred_planks>, <item:immersive_weathering:charred_fence_gate>, 1);

addWoodRecipes("oak", "minecraft");
addWoodRecipes("spruce", "minecraft");
addWoodRecipes("birch", "minecraft");
addWoodRecipes("jungle", "minecraft");
addWoodRecipes("acacia", "minecraft");
addWoodRecipes("dark_oak", "minecraft");
addWoodRecipes("crimson", "minecraft");
addWoodRecipes("warped", "minecraft");
addWoodRecipes("blossom", "quark");
addWoodRecipes("azalea", "quark");
addWoodRecipes("mangrove", "wildbackport");
addWoodRecipes("aspen", "byg");
addWoodRecipes("baobab", "byg");
addWoodRecipes("blue_enchanted", "byg");
addWoodRecipes("bulbis", "byg");
addWoodRecipes("cherry", "byg");
addWoodRecipes("cika", "byg");
addWoodRecipes("cypress", "byg");
addWoodRecipes("ebony", "byg");
addWoodRecipes("ether", "byg");
addWoodRecipes("fir", "byg");
addWoodRecipes("green_enchanted", "byg");
addWoodRecipes("holly", "byg");
addWoodRecipes("imparius", "byg");
addWoodRecipes("jacaranda", "byg");
addWoodRecipes("lament", "byg");
addWoodRecipes("mahogany", "byg");
addWoodRecipes("mangrove", "byg");
addWoodRecipes("maple", "byg");
addWoodRecipes("nightshade", "byg");
addWoodRecipes("palm", "byg");
addWoodRecipes("pine", "byg");
addWoodRecipes("rainbow_eucalyptus", "byg");
addWoodRecipes("redwood", "byg");
addWoodRecipes("skyris", "byg");
addWoodRecipes("willow", "byg");
addWoodRecipes("witch_hazel", "byg");
addWoodRecipes("zelkova", "byg");
addWoodRecipes("sythian", "byg");
addWoodRecipes("embur", "byg");

stoneCutter.remove(<item:twigs:stripped_bamboo>);
addWoodcutterRecipe(<item:minecraft:bamboo>, <item:twigs:stripped_bamboo>, 1);
stoneCutter.remove(<item:twigs:stripped_bundled_bamboo>);
addWoodcutterRecipe(<item:twigs:bundled_bamboo>, <item:twigs:stripped_bundled_bamboo>, 1);
stoneCutter.remove(<item:twigs:bamboo_thatch_stairs>);
addWoodcutterRecipe(<item:twigs:bamboo_thatch>, <item:twigs:bamboo_thatch_stairs>, 1);
stoneCutter.remove(<item:twigs:bamboo_thatch_slab>);
addWoodcutterRecipe(<item:twigs:bamboo_thatch>, <item:twigs:bamboo_thatch_slab>, 2);

addWoodcutterRecipe(<item:twigs:bundled_bamboo>, <item:minecraft:bamboo>, 9);
addWoodcutterRecipe(<item:twigs:bundled_bamboo>, <item:twigs:stripped_bamboo>, 9);
addWoodcutterRecipe(<item:twigs:stripped_bundled_bamboo>, <item:twigs:stripped_bamboo>, 9);
addWoodcutterRecipe(<tag:items:twigs:bamboo_logs>, <item:minecraft:stick>, 4);
addWoodcutterRecipe(<tag:items:twigs:bamboo_logs>, <item:one_twenty_backport:bamboo_planks>, 2);
addWoodcutterRecipe(<tag:items:twigs:bamboo_logs>, <item:one_twenty_backport:bamboo_stairs>, 2);
addWoodcutterRecipe(<item:one_twenty_backport:bamboo_planks>, <item:one_twenty_backport:bamboo_stairs>, 1);
addWoodcutterRecipe(<tag:items:twigs:bamboo_logs>, <item:one_twenty_backport:bamboo_slab>, 4);
addWoodcutterRecipe(<item:one_twenty_backport:bamboo_planks>, <item:one_twenty_backport:bamboo_slab>, 2);
addWoodcutterRecipe(<tag:items:twigs:bamboo_logs>, <item:one_twenty_backport:bamboo_pressure_plate>, 2);
addWoodcutterRecipe(<item:one_twenty_backport:bamboo_planks>, <item:one_twenty_backport:bamboo_pressure_plate>, 1);
addWoodcutterRecipe(<tag:items:twigs:bamboo_logs>, <item:one_twenty_backport:bamboo_mosaic_planks>, 2);
addWoodcutterRecipe(<item:one_twenty_backport:bamboo_planks>, <item:one_twenty_backport:bamboo_mosaic_planks>, 1);
addWoodcutterRecipe(<tag:items:twigs:bamboo_logs>, <item:one_twenty_backport:bamboo_mosaic_stairs>, 2);
addWoodcutterRecipe(<item:one_twenty_backport:bamboo_planks>, <item:one_twenty_backport:bamboo_mosaic_stairs>, 1);
addWoodcutterRecipe(<item:one_twenty_backport:bamboo_mosaic_planks>, <item:one_twenty_backport:bamboo_mosaic_stairs>, 1);
addWoodcutterRecipe(<tag:items:twigs:bamboo_logs>, <item:one_twenty_backport:bamboo_mosaic_slab>, 4);
addWoodcutterRecipe(<item:one_twenty_backport:bamboo_planks>, <item:one_twenty_backport:bamboo_mosaic_slab>, 2);
addWoodcutterRecipe(<item:one_twenty_backport:bamboo_mosaic_planks>, <item:one_twenty_backport:bamboo_mosaic_slab>, 2);
addWoodcutterRecipe(<tag:items:twigs:bamboo_logs>, <item:one_twenty_backport:bamboo_mosaic_pressure_plate>, 2);
addWoodcutterRecipe(<item:one_twenty_backport:bamboo_planks>, <item:one_twenty_backport:bamboo_mosaic_pressure_plate>, 1);
addWoodcutterRecipe(<item:one_twenty_backport:bamboo_mosaic_planks>, <item:one_twenty_backport:bamboo_mosaic_pressure_plate>, 1);
addWoodcutterRecipe(<tag:items:twigs:bamboo_logs>, <item:one_twenty_backport:bamboo_button>, 2);
addWoodcutterRecipe(<item:one_twenty_backport:bamboo_planks>, <item:one_twenty_backport:bamboo_button>, 1);
addWoodcutterRecipe(<tag:items:twigs:bamboo_logs>, <item:one_twenty_backport:bamboo_door>, 2);
addWoodcutterRecipe(<item:one_twenty_backport:bamboo_planks>, <item:one_twenty_backport:bamboo_door>, 1);
addWoodcutterRecipe(<tag:items:twigs:bamboo_logs>, <item:one_twenty_backport:bamboo_trapdoor>, 2);
addWoodcutterRecipe(<item:one_twenty_backport:bamboo_planks>, <item:one_twenty_backport:bamboo_trapdoor>, 1);
addWoodcutterRecipe(<tag:items:twigs:bamboo_logs>, <item:one_twenty_backport:bamboo_sign>, 2);
addWoodcutterRecipe(<item:one_twenty_backport:bamboo_planks>, <item:one_twenty_backport:bamboo_sign>, 1);
addWoodcutterRecipe(<tag:items:twigs:bamboo_logs>, <item:one_twenty_backport:bamboo_fence>, 2);
addWoodcutterRecipe(<item:one_twenty_backport:bamboo_planks>, <item:one_twenty_backport:bamboo_fence>, 1);
addWoodcutterRecipe(<tag:items:twigs:bamboo_logs>, <item:one_twenty_backport:bamboo_fence_gate>, 2);
addWoodcutterRecipe(<item:one_twenty_backport:bamboo_planks>, <item:one_twenty_backport:bamboo_fence_gate>, 1);
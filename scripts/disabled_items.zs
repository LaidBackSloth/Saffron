#priority 50

import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.text.TranslatableComponent;

var ings as IIngredient[] = [
    <tag:items:corail_woodcutter:woodcutters>,
    <item:supplementaries:soap>,
    <item:supplementaries:soap_block>,
    <item:supplementaries:bubble_blower>,
    <item:twigs:stripped_bamboo_boat>,
    <item:twigs:cracked_bricks>,
    <item:twigs:mossy_bricks>,
    <item:twigs:mossy_brick_stairs>,
    <item:twigs:mossy_brick_slab>,
    <item:twigs:mossy_brick_wall>,
    <item:twigs:calcite_stairs>,
    <item:twigs:calcite_slab>,
    <item:twigs:calcite_wall>,
    <item:twigs:polished_calcite>,
    <item:twigs:polished_calcite_stairs>,
    <item:twigs:polished_calcite_slab>,
    <item:quark:tuff_bricks>,
    <item:quark:tuff_bricks_slab>,
    <item:quark:tuff_bricks_stairs>,
    <item:quark:tuff_bricks_wall>,
    <item:twigs:tuff_stairs>,
    <item:twigs:tuff_slab>,
    <item:quark:polished_tuff>,
    <item:quark:polished_tuff_stairs>,
    <item:quark:polished_tuff_slab>,
    <item:constructionwand:core_angel>,
    <item:constructionwand:core_destruction>,
    <tag:items:wildbackport:chest_boats>,
    <tag:items:another_furniture:stools>,
    <item:byg:mud_ball>,
    <item:byg:mud_block>,
    <item:byg:mud_bricks>,
    <item:byg:mossy_stone>,
    <item:byg:mossy_stone_stairs>,
    <item:byg:mossy_stone_slab>,
    <item:byg:mossy_stone_wall>,
    <item:byg:ametrine_horse_armor>,
    <item:byg:pendorite_battleaxe>,
    <item:morehorsearmor:enderite_horse_armor>,
    <tag:items:immersive_weathering:bark>,
    <tag:items:immersive_weathering:scales>,
    <item:immersive_weathering:steel_wool>,
    <item:twigs:stripped_bamboo_sign>,
    <item:twigs:stripped_bamboo_planks>,
    <item:twigs:stripped_bamboo_stairs>,
    <item:twigs:stripped_bamboo_slab>,
    <item:twigs:stripped_bamboo_fence>,
    <item:twigs:stripped_bamboo_fence_gate>,
    <item:twigs:stripped_bamboo_door>,
    <item:twigs:stripped_bamboo_trapdoor>,
    <item:twigs:stripped_bamboo_button>,
    <item:twigs:stripped_bamboo_pressure_plate>,
    <item:twigs:stripped_bamboo_table>,
    <item:one_twenty_backport:bamboo_raft>,
    <item:supplementaries:twigs/hanging_sign_bamboo>,
    <item:supplementaries:twigs/sign_post_bamboo>,
    <item:quark:oak_leaf_carpet>,
    <item:quark:spruce_leaf_carpet>,
    <item:quark:birch_leaf_carpet>,
    <item:quark:jungle_leaf_carpet>,
    <item:quark:acacia_leaf_carpet>,
    <item:quark:dark_oak_leaf_carpet>,
    <item:quark:azalea_leaf_carpet>,
    <item:quark:flowering_azalea_leaf_carpet>,
    <item:quark:blue_blossom_leaf_carpet>,
    <item:quark:red_blossom_leaf_carpet>,
    <item:quark:orange_blossom_leaf_carpet>,
    <item:quark:lavender_blossom_leaf_carpet>,
    <item:quark:pink_blossom_leaf_carpet>,
    <item:quark:yellow_blossom_leaf_carpet>,
    <item:quark:bottled_cloud>,
    <item:quark:bamboo_block>,
    <item:quark:frog_spawn_egg>,
    <item:quark:toretoise_spawn_egg>,
    <item:quark:bamboo_mat>,
    <item:quark:bamboo_mat_carpet>,
    <item:quark:blue_nether_bricks>,
    <item:quark:blue_nether_bricks_slab>,
    <item:quark:blue_nether_bricks_stairs>,
    <item:quark:blue_nether_bricks_wall>,
    <item:quark:nether_brick_fence_gate>,
    <item:additionaladditions:amethyst_lamp>,
    <item:additionaladditions:crossbow_with_spyglass>,
    <item:additionaladditions:depth_meter>,
    <item:additionaladditions:mysterious_bundle>,
    <item:additionaladditions:gold_ring>,
    <item:additionaladditions:honeyed_apple>,
    <item:additionaladditions:chicken_nugget>,
    <item:additionaladditions:gilded_netherite_helmet>,
    <item:additionaladditions:gilded_netherite_chestplate>,
    <item:additionaladditions:gilded_netherite_leggings>,
    <item:additionaladditions:gilded_netherite_boots>,
    <item:additionaladditions:gilded_netherite_sword>,
    <item:additionaladditions:gilded_netherite_axe>,
    <item:additionaladditions:gilded_netherite_pickaxe>,
    <item:additionaladditions:gilded_netherite_shovel>,
    <item:additionaladditions:gilded_netherite_hoe>,
    <item:additionaladditions:rope>,
    <item:immersive_weathering:stone_brick>,
    <item:immersive_weathering:prismarine_brick>,
    <item:immersive_weathering:end_stone_brick>,
    <item:immersive_weathering:blackstone_brick>,
    <item:immersive_weathering:deepslate_brick>,
    <item:immersive_weathering:deepslate_tile>,
    <item:supplementaries:rope>,
    <item:supplementaries:rope_arrow>,
    <item:friendsandfoes:moobloom_spawn_egg>,
    <item:supplementaries:urn>,
    <item:supplementaries:pulley_block>,
    <tag:items:mctb:revertable_workbench>,
    <item:infinite_water:infinite_lava>,
    <item:infinite_water:infinite_void>,
    <item:infinite_water:infinite_milk>,
    <item:twigs:chiseled_bricks>,
    <item:byg:cryptic_lantern>,
    <item:clayworks:kiln>,
];

var blacklist as IItemStack[] = [
    <item:corail_woodcutter:oak_woodcutter>,
    <item:mctb:spruce_crafting_table>,
    <item:mctb:birch_crafting_table>,
    <item:mctb:acacia_crafting_table>,
    <item:mctb:jungle_crafting_table>,
    <item:mctb:dark_oak_crafting_table>,
    <item:mctb:crimson_crafting_table>,
    <item:mctb:warped_crafting_table>,
    <item:mctb:azalea_crafting_table>,
    <item:mctb:blossom_crafting_table>,
];

function tooltip(item as IItemStack) as void {
    item.addTooltip(new TranslatableComponent("saffron.tooltip.disabled").withStyle(style => style.withColor(<constant:minecraft:formatting:red>)));
}

function disable(item as IItemStack) as void {
    tooltip(item);
    JEI.hideIngredient(item);
    for tag in <tagmanager:items>.getTagsFor(item.registryName) {
        if (tag.id != <resource:doubleslabs:disabled_slabs>) {
            tag.removeId(item.registryName);
        }
    }
    <tag:items:saffron:disabled>.addId(item.registryName);
    recipes.remove(item);
}

for ing in ings {
    for item in ing.items {
        var bl = false;
        for blacklisted in blacklist {
            if (item.matches(blacklisted)) {
                bl = true;
            }
        }

        if (!bl) {
            disable(item);
        }
    }
}

//for item in (<tag:items:saffron:disabled> as IIngredient).items {
//    tooltip(item);
//    JEI.hideIngredient(item);
//}
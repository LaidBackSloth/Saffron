#priority 1

import mods.jei.JEI;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.text.TranslatableComponent;
import crafttweaker.api.text.ChatFormatting;
import crafttweaker.api.text.Style;

function i(ing as IIngredient, s as string) as void {
    for item in ing.items {
        JEI.addDescription(item, new TranslatableComponent("saffron.info." + s));
    }
}

function t(ing as IIngredient, s as string) as void {
    for item in ing.items {
        item.addTooltip(new TranslatableComponent("saffron.tooltip." + s).withStyle(style => style.withColor(<constant:minecraft:formatting:gray>)));
    }
}

function b(ing as IIngredient, s as string) as void {
    i(ing, s);
    t(ing, s);
}

<item:enchantinginfuser:enchanting_infuser>.clearTooltip(true);
<item:enchantinginfuser:advanced_enchanting_infuser>.clearTooltip(true);
<item:minecraft:crafting_table>.clearTooltip(true);

b(<item:minecraft:player_head>, "player_head");

t(<item:goldenhopper:golden_hopper>, "golden_hopper");
t(<item:goldenhopper:golden_hopper_minecart>, "golden_hopper");

b(<item:additionaladditions:copper_patina>, "copper_patina");

t(<item:additionaladditions:wrench>, "wrench");

t(<item:angelblockrenewed:angel_block>, "angel_block");

b(<item:naturescompass:naturescompass>, "naturescompass");

t(<item:byg:pendorite_ingot>, "pendorite_ingot");

t(<item:quark:glass_item_frame>, "glass_item_frame");
t(<item:quark:glowing_glass_item_frame>, "glass_item_frame");

t(<item:quark:feeding_trough>, "feeding_trough");

t(<item:quark:chute>, "chute");

t(<item:quark:ender_watcher>, "ender_watcher");

t(<item:supplementaries:cog_block>, "cog_block");

t(<item:supplementaries:relayer>, "relayer");

t(<item:supplementaries:spring_launcher>, "spring_launcher");

t(<item:supplementaries:turn_table>, "turn_table");

t(<item:supplementaries:redstone_illuminator>, "redstone_illuminator");

t(<item:supplementaries:quiver>, "quiver");

t(<item:supplementaries:cage>, "cage");

t(<item:supplementaries:speaker_block>, "speaker_block");

t(<item:supplementaries:bellows>, "bellows");

t(<item:supplementaries:crank>, "crank");

t(<item:quark:trowel>, "trowel");

b(<item:toolbelt:belt>, "tool_belt");

t(<item:tradingpost:trading_post>, "trading_post");

t(<item:voidtotem:totem_of_void_undying>, "totem_of_void_undying");

t(<item:enchantinginfuser:enchanting_infuser>, "enchanting_infuser");

t(<item:enchantinginfuser:advanced_enchanting_infuser>, "advanced_enchanting_infuser");

t(<item:quark:iron_rod>, "iron_rod");

t(<item:quark:sturdy_stone>, "sturdy_stone");

t(<item:chunkloaders:single_chunk_loader>, "chunk_loader");
t(<item:chunkloaders:basic_chunk_loader>, "chunk_loader");
t(<item:chunkloaders:advanced_chunk_loader>, "chunk_loader");
t(<item:chunkloaders:ultimate_chunk_loader>, "chunk_loader");

i(<tag:items:minecraft:boats>, "boat");

t(<item:minecraft:totem_of_undying>, "totem");

t(<item:buzzier_bees:honey_apple>, "honey_apple");
t(<item:buzzier_bees:honey_bread>, "honey_bread");
t(<item:buzzier_bees:glazed_porkchop>, "glazed_porkchop");

t(<tag:items:comforts:sleeping_bags>, "sleeping_bag");
b(<tag:items:comforts:hammocks>, "hammock");
i(<item:comforts:rope_and_nail>, "hammock");

i(<tag:items:elevatorid:elevators>, "elevator");

i(<tag:items:framedcompactdrawers:frame_triple>, "drawer_frame_3");
i(<tag:items:framedcompactdrawers:frame_double>, "drawer_frame_2");

i(<item:framedblocks:framed_cube>, "framed_block");
i(<item:framedblocks:framed_hammer>, "framed_hammer");
i(<item:framedblocks:framed_wrench>, "framed_wrench");
i(<item:framedblocks:framed_blueprint>, "framed_blueprint");
i(<item:framedblocks:framed_key>, "framed_key");
i(<item:framedblocks:framed_screwdriver>, "framed_screwdriver");
i(<item:framedblocks:framed_reinforcement>, "framed_reinforcement");

i(<item:supplementaries:timber_frame>, "timber_frame");
i(<item:supplementaries:timber_brace>, "timber_brace");
i(<item:supplementaries:timber_cross_brace>, "timber_brace");

i(<item:geode:wrappist_shard>, "wrappist");

t(<item:quark:obsidian_pressure_plate>, "obsidian_pressure_plate");

i(<item:quark:gravisand>, "gravisand");

i(<item:quark:redstone_randomizer>, "redstone_randomizer");

i(<item:quark:seed_pouch>, "seed_pouch");

t(<item:quark:abacus>, "abacus");

i(<item:quark:grate>, "grate");

i(<tag:items:forge:hoes>, "hoe_harvest");

i(<item:quark:slime_in_a_bucket>, "slime_in_a_bucket");

i(<item:quark:diamond_heart>, "diamond_heart");

i(<tag:items:quark:colored_runes>, "colored_rune");
i(<item:quark:rainbow_rune>, "rainbow_rune");
i(<item:quark:blank_rune>, "blank_rune");

i(<item:quark:music_disc_drips>, "ambient_disc");
i(<item:quark:music_disc_ocean>, "ambient_disc");
i(<item:quark:music_disc_rain>, "ambient_disc");
i(<item:quark:music_disc_wind>, "ambient_disc");
i(<item:quark:music_disc_fire>, "ambient_disc");
i(<item:quark:music_disc_clock>, "ambient_disc");
i(<item:quark:music_disc_crickets>, "ambient_disc");
i(<item:quark:music_disc_chatter>, "ambient_disc");

i(<tag:items:quark:stools>, "stool");

i(<item:minecraft:poisonous_potato>, "poisonous_potato");

i(<item:rainbowlamp:rainbow_lamp>, "rainbow_lamp");

i(<item:supplementaries:lock_block>, "lock_block");
i(<item:supplementaries:netherite_door>, "lockable");
i(<item:supplementaries:netherite_trapdoor>, "lockable");
i(<item:supplementaries:safe>, "lockable");

i(<item:supplementaries:gold_door>, "gold_door");
i(<item:supplementaries:gold_trapdoor>, "gold_door");

i(<item:supplementaries:flute>, "flute");

i(<item:supplementaries:crystal_display>, "crystal_display");

i(<item:supplementaries:blackboard>, "blackboard");

i(<item:supplementaries:wind_vane>, "wind_vane");

t(<item:byg:ametrine_block>, "ametrine_block");

t(<item:wildbackport:warden_spawn_egg>, "ancient_city");

t(<item:waystones:waystone>, "waystone");

t(<item:infinite_water:infinite_water>, "infinite_water");

i(<tag:items:another_furniture:benches>, "bench");
i(<item:another_furniture:furniture_hammer>, "bench");

i(<item:byg:hypogeal_imperium>, "hypogeal_imperium");
i(<item:byg:subzero_crystal_shard>, "hypogeal_imperium");
i(<item:byg:subzero_crystal_cluster>, "hypogeal_imperium");

i(<tag:items:forge:ores/ametrine>, "ametrine");
i(<item:byg:ametrine_gems>, "ametrine");

i(<tag:items:forge:ores/pendorite>, "pendorite_ore");
i(<tag:items:forge:ores/emeraldite>, "emeraldite_ore");

i(<item:immersive_weathering:weeds>, "weeds");
i(<item:minecraft:farmland>, "weeds");
i(<item:immersive_weathering:mulch_block>, "weeds");

i(<item:minecraft:end_portal_frame>, "end_portal");

i(<item:minecraft:cobblestone>, "cobble_gen");

i(<item:minecraft:basalt>, "basalt_gen");

i(<item:minecraft:name_tag>, "name_tag");

//fixing a bug from quark
JEI.addIngredient(<item:quark:spruce_ladder>.withTag({Hide: false}));
JEI.addIngredient(<item:quark:birch_ladder>.withTag({Hide: false}));
JEI.addIngredient(<item:quark:jungle_ladder>.withTag({Hide: false}));
JEI.addIngredient(<item:quark:acacia_ladder>.withTag({Hide: false}));
JEI.addIngredient(<item:quark:dark_oak_ladder>.withTag({Hide: false}));
JEI.addIngredient(<item:quark:crimson_ladder>.withTag({Hide: false}));
JEI.addIngredient(<item:quark:warped_ladder>.withTag({Hide: false}));

JEI.addIngredient(<item:minecraft:player_head>);
JEI.addIngredient(<item:minecraft:spawner>);

//hiding unwanted categories
JEI.hideCategory("minecraft:anvil");
JEI.hideCategory("waystones:warp_plate");
JEI.hideCategory("jeresources:dungeon");
JEI.hideCategory("jeresources:plant");
JEI.hideCategory("jeresources:worldgen");
JEI.hideCategory("clayworks:baking");

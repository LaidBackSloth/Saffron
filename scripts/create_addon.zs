#priority 95

import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import mods.jei.JEI;
import crafttweaker.api.text.TranslatableComponent;

//add tags
<tag:items:createdeco:vertical_slabs>.addId(
    <resource:createdeco:worn_bricks_slab_vert>, <resource:createdeco:worn_brick_tiles_slab_vert>, <resource:createdeco:worn_long_bricks_slab_vert>, <resource:createdeco:worn_short_bricks_slab_vert>, <resource:createdeco:cracked_worn_bricks_slab_vert>, <resource:createdeco:cracked_worn_brick_tiles_slab_vert>, <resource:createdeco:cracked_worn_long_bricks_slab_vert>, <resource:createdeco:cracked_worn_short_bricks_slab_vert>, <resource:createdeco:mossy_worn_bricks_slab_vert>, <resource:createdeco:mossy_worn_brick_tiles_slab_vert>, <resource:createdeco:mossy_worn_long_bricks_slab_vert>, <resource:createdeco:mossy_worn_short_bricks_slab_vert>,
    <resource:createdeco:pearl_bricks_slab_vert>, <resource:createdeco:pearl_brick_tiles_slab_vert>, <resource:createdeco:pearl_long_bricks_slab_vert>, <resource:createdeco:pearl_short_bricks_slab_vert>, <resource:createdeco:cracked_pearl_bricks_slab_vert>, <resource:createdeco:cracked_pearl_brick_tiles_slab_vert>, <resource:createdeco:cracked_pearl_long_bricks_slab_vert>, <resource:createdeco:cracked_pearl_short_bricks_slab_vert>, <resource:createdeco:mossy_pearl_bricks_slab_vert>, <resource:createdeco:mossy_pearl_brick_tiles_slab_vert>, <resource:createdeco:mossy_pearl_long_bricks_slab_vert>, <resource:createdeco:mossy_pearl_short_bricks_slab_vert>,
    <resource:createdeco:dean_bricks_slab_vert>, <resource:createdeco:dean_brick_tiles_slab_vert>, <resource:createdeco:dean_long_bricks_slab_vert>, <resource:createdeco:dean_short_bricks_slab_vert>, <resource:createdeco:cracked_dean_bricks_slab_vert>, <resource:createdeco:cracked_dean_brick_tiles_slab_vert>, <resource:createdeco:cracked_dean_long_bricks_slab_vert>, <resource:createdeco:cracked_dean_short_bricks_slab_vert>, <resource:createdeco:mossy_dean_bricks_slab_vert>, <resource:createdeco:mossy_dean_brick_tiles_slab_vert>, <resource:createdeco:mossy_dean_long_bricks_slab_vert>, <resource:createdeco:mossy_dean_short_bricks_slab_vert>,
    <resource:createdeco:red_bricks_slab_vert>, <resource:createdeco:red_brick_tiles_slab_vert>, <resource:createdeco:red_long_bricks_slab_vert>, <resource:createdeco:red_short_bricks_slab_vert>, <resource:createdeco:cracked_red_bricks_slab_vert>, <resource:createdeco:cracked_red_brick_tiles_slab_vert>, <resource:createdeco:cracked_red_long_bricks_slab_vert>, <resource:createdeco:cracked_red_short_bricks_slab_vert>, <resource:createdeco:mossy_red_bricks_slab_vert>, <resource:createdeco:mossy_red_brick_tiles_slab_vert>, <resource:createdeco:mossy_red_long_bricks_slab_vert>, <resource:createdeco:mossy_red_short_bricks_slab_vert>,
    <resource:createdeco:scarlet_bricks_slab_vert>, <resource:createdeco:scarlet_brick_tiles_slab_vert>, <resource:createdeco:scarlet_long_bricks_slab_vert>, <resource:createdeco:scarlet_short_bricks_slab_vert>, <resource:createdeco:cracked_scarlet_bricks_slab_vert>, <resource:createdeco:cracked_scarlet_brick_tiles_slab_vert>, <resource:createdeco:cracked_scarlet_long_bricks_slab_vert>, <resource:createdeco:cracked_scarlet_short_bricks_slab_vert>, <resource:createdeco:mossy_scarlet_bricks_slab_vert>, <resource:createdeco:mossy_scarlet_brick_tiles_slab_vert>, <resource:createdeco:mossy_scarlet_long_bricks_slab_vert>, <resource:createdeco:mossy_scarlet_short_bricks_slab_vert>,
    <resource:createdeco:dusk_bricks_slab_vert>, <resource:createdeco:dusk_brick_tiles_slab_vert>, <resource:createdeco:dusk_long_bricks_slab_vert>, <resource:createdeco:dusk_short_bricks_slab_vert>, <resource:createdeco:cracked_dusk_bricks_slab_vert>, <resource:createdeco:cracked_dusk_brick_tiles_slab_vert>, <resource:createdeco:cracked_dusk_long_bricks_slab_vert>, <resource:createdeco:cracked_dusk_short_bricks_slab_vert>, <resource:createdeco:mossy_dusk_bricks_slab_vert>, <resource:createdeco:mossy_dusk_brick_tiles_slab_vert>, <resource:createdeco:mossy_dusk_long_bricks_slab_vert>, <resource:createdeco:mossy_dusk_short_bricks_slab_vert>,
    <resource:createdeco:blue_bricks_slab_vert>, <resource:createdeco:blue_brick_tiles_slab_vert>, <resource:createdeco:blue_long_bricks_slab_vert>, <resource:createdeco:blue_short_bricks_slab_vert>, <resource:createdeco:cracked_blue_bricks_slab_vert>, <resource:createdeco:cracked_blue_brick_tiles_slab_vert>, <resource:createdeco:cracked_blue_long_bricks_slab_vert>, <resource:createdeco:cracked_blue_short_bricks_slab_vert>, <resource:createdeco:mossy_blue_bricks_slab_vert>, <resource:createdeco:mossy_blue_brick_tiles_slab_vert>, <resource:createdeco:mossy_blue_long_bricks_slab_vert>, <resource:createdeco:mossy_blue_short_bricks_slab_vert>,
    <resource:createdeco:gold_sheet_slab_vert>, <resource:createdeco:netherite_sheet_slab_vert>, <resource:createdeco:andesite_sheet_slab_vert>, <resource:createdeco:brass_sheet_slab_vert>, <resource:createdeco:cast_iron_sheet_slab_vert>, <resource:createdeco:iron_sheet_slab_vert>, <resource:createdeco:copper_sheet_slab_vert>, <resource:createdeco:zinc_sheet_slab_vert>
);

<tag:items:quark:vertical_slabs>.add(<tag:items:createdeco:vertical_slabs>);

<tag:items:forge:stone>.addId(<resource:create:asurine>, <resource:create:crimsite>, <resource:create:limestone>, <resource:create:ochrum>, <resource:create:scoria>, <resource:create:scorchia>, <resource:create:veridium>);
<tag:items:minecraft:stone_tool_materials>.addId(<resource:create:asurine>, <resource:create:crimsite>, <resource:create:limestone>, <resource:create:ochrum>, <resource:create:scoria>, <resource:create:scorchia>, <resource:create:veridium>);
<tag:items:quark:stone_tool_materials>.add(<tag:items:minecraft:stone_tool_materials>);

<tag:blocks:minecraft:mineable/pickaxe>.addId(<resource:contenttweaker:hardened_block>);
<tag:blocks:minecraft:needs_stone_tool>.addId(<resource:contenttweaker:hardened_block>);

//disable items
disable(<item:create:red_sand_paper>);
disable(<item:immersive_weathering:mossy_bricks>);
disable(<item:immersive_weathering:mossy_brick_stairs>);
disable(<item:immersive_weathering:mossy_brick_slab>);
disable(<item:immersive_weathering:mossy_brick_wall>);
disable(<item:immersive_weathering:cracked_bricks>);
disable(<item:immersive_weathering:cracked_brick_stairs>);
disable(<item:immersive_weathering:cracked_brick_slab>);
disable(<item:immersive_weathering:cracked_brick_wall>);
disable(<item:quark:iron_rod>);
disable(<item:quark:chute>);

//proper excavated variants implementation
function addOreCrushingRecipe(id as string, name as string, amount as int, chance as float) as void {
    <recipetype:create:crushing>.addRecipe("crushing/" + name + "_ore", [<item:${id}> * amount, <item:${id}> % chance, <item:create:experience_nugget> % 75], <tagmanager:items>.tag(<resource:forge:ores/${name}>), 200);
}

addOreCrushingRecipe("byg:anthracite", "anthracite", 1, 75);
addOreCrushingRecipe("minecraft:redstone", "redstone", 5, 50);
addOreCrushingRecipe("byg:ametrine_gems", "ametrine", 1, 75);
addOreCrushingRecipe("minecraft:lapis_lazuli", "lapis", 11, 37);
addOreCrushingRecipe("create:crushed_gold_ore", "gold", 1, 75);
addOreCrushingRecipe("create:crushed_iron_ore", "iron", 1, 75);
addOreCrushingRecipe("create:crushed_copper_ore", "copper", 6, 12.5);
addOreCrushingRecipe("minecraft:emerald", "emerald", 1, 75);
addOreCrushingRecipe("minecraft:quartz", "quartz", 1, 75);
addOreCrushingRecipe("minecraft:diamond", "diamond", 1, 75);
addOreCrushingRecipe("create:crushed_zinc_ore", "zinc", 1, 75);
addOreCrushingRecipe("byg:emeraldite_shards", "emeraldite", 1, 75);
addOreCrushingRecipe("byg:raw_pendorite", "pendorite", 1, 25);
addOreCrushingRecipe("minecraft:coal", "coal", 1, 75);
addOreCrushingRecipe("byg:lignite", "lignite", 3, 25);

<recipetype:create:crushing>.removeByRegex("create:(compat/.*/)?crushing/.*_ore");

//sand paper compat
Replacer.forOutput(<item:create:sand_paper>, craftingTable).replace(<tag:items:forge:sand/colorless>, <tag:items:forge:sand>).execute();

//remove recipes
<recipetype:create:crushing>.removeByRegex("create:crushing/(crimsite|ochrum|veridium|asurine|diorite|tuff)(_recycling)?");
<recipetype:create:deploying>.removeByRegex("create:deploying/waxed.*_from_adding_wax");
<recipetype:create:filling>.removeByRegex("create:filling/(glowstone|redstone|gunpowder)");
<recipetype:create:splashing>.removeByRegex("minecraft:splashing/.*mossy.*");
<recipetype:create:splashing>.removeByRegex("minecraft:splashing/.*_rusting");
<recipetype:create:compacting>.removeByRegex("create:compacting/.*_from_flint");
<recipetype:create:milling>.removeByName("create:milling/andesite");
craftingTable.removeByRegex("create:.*_slab_recycling");
stoneCutter.removeByRegex("createdeco:mossy_.*_from_(?!mossy).*");
stoneCutter.removeByRegex("createdeco:cracked_.*_from_(?!cracked).*");
craftingTable.removeByName("create:crafting/materials/andesite_alloy_from_zinc");
<recipetype:create:mixing>.removeByName("create:mixing/andesite_alloy_from_zinc");
<recipetype:create:milling>.removeByName("create:milling/dripstone_block");
<recipetype:create:milling>.removeByName("create:milling/calcite");
<recipetype:create:milling>.removeByName("create:milling/clay");
<recipetype:create:milling>.removeByName("create:milling/granite");
<recipetype:create:milling>.removeByName("create:milling/sandstone");
<recipetype:create:crushing>.removeByName("create:crushing/glowstone");
<recipetype:create:crushing>.removeByName("create:crushing/amethyst_block");
<recipetype:create:crushing>.removeByName("create:compat/byg/crushing/red_rock");
<recipetype:create:crushing>.removeByName("create:compat/byg/crushing/pervaded_netherrack");
<recipetype:create:haunting>.removeByName("create:haunting/nether_brick");
//<recipeType:create:emptying>.removeByName("create:empty_infinite_water_infinite_milk_of_minecraft_milk");

//better crushed ore washing
<recipetype:create:splashing>.removeByRegex("create:splashing/crushed_.*_ore");
<recipetype:create:splashing>.addRecipe("splashing_crushed_iron_ore", [<item:minecraft:iron_nugget> * 9, (<item:minecraft:iron_nugget> * 5) % 25], <item:create:crushed_iron_ore>, 200);
<recipetype:create:splashing>.addRecipe("splashing_crushed_gold_ore", [<item:minecraft:gold_nugget> * 9, (<item:minecraft:gold_nugget> * 5) % 25], <item:create:crushed_gold_ore>, 200);
<recipetype:create:splashing>.addRecipe("splashing_crushed_copper_ore", [<item:create:copper_nugget> * 9, (<item:create:copper_nugget> * 5) % 25], <item:create:crushed_copper_ore>, 200);
<recipetype:create:splashing>.addRecipe("splashing_crushed_zinc_ore", [<item:create:zinc_nugget> * 9, (<item:create:zinc_nugget> * 5) % 25], <item:create:crushed_zinc_ore>, 200);

//proper mossy stones
function mossyCDStoneType(name as string) as void {
    if (name == "red") {
        mossySpecific(<item:minecraft:bricks>, <item:createdeco:mossy_red_bricks>, true);
    } else {
        mossy("createdeco", name + "_bricks");
    }
    mossy("createdeco", name + "_brick_tiles");
    mossy("createdeco", name + "_long_bricks");
    mossy("createdeco", name + "_short_bricks");
}

mossyCDStoneType("worn");
mossyCDStoneType("red");
mossyCDStoneType("dean");
mossyCDStoneType("scarlet");
mossyCDStoneType("dusk");
mossyCDStoneType("blue");
mossyCDStoneType("pearl");

//client-information
function ci(ing as IIngredient, s as string) as void {
    for item in ing.items {
        JEI.addDescription(item, new TranslatableComponent("saffron-create.info." + s));
    }
}

function ct(ing as IIngredient, s as string) as void {
    for item in ing.items {
        item.addTooltip(new TranslatableComponent("saffron-create.tooltip." + s).withStyle(style => style.withColor(<constant:minecraft:formatting:gray>)));
    }
}

ci(<item:create:scoria>, "scoria_gen");
ci(<item:create:limestone>, "marble_gen");

ct(<item:minecraft:spawner>, "minecart_movable");
ct(<item:minecraft:budding_amethyst>, "minecart_movable");

//stone types automation
Replacer.forOutput(<item:minecraft:blackstone>, <recipetype:create:haunting>).replace(<tag:items:forge:cobblestone>, <item:minecraft:cobblestone>).execute();
furnace.remove(<item:create:scoria>);

//copper automation
<recipetype:create:crushing>.addRecipe("crushing_ochrum", [<item:create:copper_nugget> % 12.5], <item:create:ochrum>, 200);
<recipetype:create:compacting>.addRecipe("ochrum", <constant:create:heat_condition:none>, [<item:create:ochrum>], [<item:quark:limestone>], [<fluid:create:honey> * 10], 200);

//zinc automation
<recipetype:create:crushing>.addRecipe("crushing_veridium", [<item:create:zinc_nugget> % 12.5], <item:create:veridium>, 200);
<recipetype:create:compacting>.addRecipe("veridium", <constant:create:heat_condition:heated>, [<item:create:veridium> * 2], [<item:minecraft:prismarine>, <item:minecraft:stone>], [<fluid:minecraft:water> * 250], 200);

//redstone automation
<recipetype:create:crushing>.addRecipe("crushing_crimsite", [<item:minecraft:redstone> % 25], <item:create:crimsite>, 200);
<recipetype:create:compacting>.addRecipe("crimsite", <constant:create:heat_condition:none>, [<item:create:crimsite>], [<item:twigs:rhyolite>, <item:minecraft:weeping_vines>], [], 200);

//lapis automation
<recipetype:create:crushing>.addRecipe("crushing_asurine", [<item:minecraft:lapis_lazuli> % 25], <item:create:asurine>, 200);
<recipetype:create:compacting>.addRecipe("asurine", <constant:create:heat_condition:none>, [<item:create:asurine>], [<item:quark:shale>, <item:minecraft:twisting_vines>], [], 200);

//netherrack automation
craftingTable.addShapeless("neherrack", <item:minecraft:netherrack>, [<item:minecraft:cobblestone>, <item:create:cinder_flour>]);

//netherquartz automation more specific
<recipetype:create:splashing>.removeByName("create:splashing/soul_sand");
<recipetype:create:splashing>.addRecipe("splashing_soul_sand", [(<item:minecraft:quartz> * 4) % 12.5], <item:minecraft:soul_sand>, 200);

//sand automation more specific
<recipetype:create:crushing>.removeByName("create:crushing/gravel");
<recipetype:create:crushing>.addRecipe("crushing_gravel", [<item:minecraft:sand>], <item:minecraft:gravel>, 200);

//coal automation
<recipetype:create:compacting>.addRecipe("compacting_coal", <constant:create:heat_condition:heated>, [<item:minecraft:coal>], [<item:minecraft:charcoal> * 4], [], 200);

//diamond automation
<recipetype:create:compacting>.addRecipe("compacting_diamond", <constant:create:heat_condition:superheated>, [<item:minecraft:diamond>], [<item:minecraft:coal_block> * 8], [], 200);

//netherite automation
stoneCutter.addRecipe("red_nether_brick", <item:contenttweaker:red_nether_brick> * 4, <item:minecraft:red_nether_bricks>);
craftingTable.addShaped("red_nether_bricks", <item:minecraft:red_nether_bricks>,
[[<item:contenttweaker:red_nether_brick>, <item:contenttweaker:red_nether_brick>],
[<item:contenttweaker:red_nether_brick>, <item:contenttweaker:red_nether_brick>]]);

craftingTable.addShapeless("hardened_ingots_from_block", <item:contenttweaker:hardened_ingot> * 9, [<item:contenttweaker:hardened_block>]);
craftingTable.addShaped("hardened_block_from_ingots", <item:contenttweaker:hardened_block>,
[[<item:contenttweaker:hardened_ingot>, <item:contenttweaker:hardened_ingot>, <item:contenttweaker:hardened_ingot>],
[<item:contenttweaker:hardened_ingot>, <item:contenttweaker:hardened_ingot>, <item:contenttweaker:hardened_ingot>],
[<item:contenttweaker:hardened_ingot>, <item:contenttweaker:hardened_ingot>, <item:contenttweaker:hardened_ingot>]]);

<recipetype:create:mixing>.addRecipe("mixing_hardened_ingot", <constant:create:heat_condition:superheated>, [<item:contenttweaker:hardened_ingot>], [<item:createdeco:cast_iron_ingot>, <item:create:sturdy_sheet>, <item:contenttweaker:red_nether_brick>], [<fluid:minecraft:water> * 1000], 200);

<recipetype:create:compacting>.addRecipe("compacting_netherite_scrap", <constant:create:heat_condition:superheated>, [<item:minecraft:netherite_scrap>], [<item:contenttweaker:hardened_block> * 8], [<fluid:create:chocolate> * 1000], 200);

//glowstone dust automation
<recipetype:create:crushing>.removeByName("create:crushing/prismarine_crystals");
<recipetype:create:crushing>.addRecipe("crushing_prismarine_crystals", [<item:minecraft:glowstone_dust> * 2, <item:minecraft:glowstone_dust> % 50], <item:minecraft:prismarine_crystals>, 200);
<recipetype:create:crushing>.addRecipe("crushing_prismarine_shard", [<item:minecraft:glowstone_dust> % 50], <item:minecraft:prismarine_shard>, 200);

//crying obsidian automation
<recipetype:create:haunting>.addRecipe("crying_obsidian", [<item:minecraft:crying_obsidian>], <item:minecraft:obsidian>, 200);

//better create deco bricks recipes
Replacer.forOutput(<item:createdeco:scarlet_brick>, craftingTable).replace(<item:minecraft:brick>, <item:createdeco:worn_brick>).execute();
Replacer.forOutput(<item:createdeco:dusk_brick>, craftingTable).replace(<item:minecraft:brick>, <item:createdeco:worn_brick>).execute();
Replacer.forOutput(<item:createdeco:pearl_brick>, craftingTable).replace(<item:minecraft:brick>, <item:createdeco:worn_brick>).execute();
Replacer.forOutput(<item:createdeco:dean_brick>, craftingTable).replace(<item:minecraft:brick>, <item:createdeco:worn_brick>).execute();
Replacer.forOutput(<item:createdeco:blue_brick>, craftingTable).replace(<item:minecraft:brick>, <item:createdeco:worn_brick>).execute();

//harder jetpack
Replacer.forOutput(<item:create_jetpack:jetpack>, <recipetype:create:mechanical_crafting>).replace(<item:create:shaft>, <item:byg:pendorite_ingot>).execute();
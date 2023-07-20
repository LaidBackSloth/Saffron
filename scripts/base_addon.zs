#priority 15

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;

var copper_block = <item:minecraft:copper_block>;
var hopper = <item:minecraft:hopper>;
var crafting_tables = <tag:items:c:workbenches>;
var dropper = <item:minecraft:dropper>;
var structured_crafter = <item:structuredcrafting:structured_crafter>;

craftingTable.remove(structured_crafter);
craftingTable.addShaped("structured_crafter", structured_crafter,
[[copper_block, hopper, copper_block],
[dropper, crafting_tables, dropper],
[copper_block, hopper, copper_block]]);

t(<item:minecraft:dispenser>, "dispenser");
b(<item:structuredcrafting:structured_crafter>, "structured_crafter");
i(<tag:items:quark:stools>, "stool");

function removeSawmillRecipes() as void {
    //NO-OP
    //only used for Saffron Create
}

function addSawmillRecipe(name as string, input as IIngredient, output as IItemStack, amount as int) as void {
    //NO-OP
    //only used for Saffron Create
}
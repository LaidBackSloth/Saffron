#priority 15

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
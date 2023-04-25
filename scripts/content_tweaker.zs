#loader contenttweaker

import contenttweaker.builder.vanilla.block.BlockBuilder;
import contenttweaker.builder.vanilla.item.ItemBuilder;
import contenttweaker.object.vanilla.property.StandardBlockProperties;
import contenttweaker.object.vanilla.CreativeTabReference;

function blockBuilder() as contenttweaker.builder.vanilla.block.Basic {
    return <factory:block>.typed<contenttweaker.builder.vanilla.block.Basic>();
}

function itemBuilder() as contenttweaker.builder.vanilla.item.Basic {
    return <factory:item>.typed<contenttweaker.builder.vanilla.item.Basic>();
}

blockBuilder()
    .cloning(<block:byg:pendorite_ore>.properties)
    .dropsNormally()
    .requiresToolToDrop()
    .tab(<tab:byg.byg>)
    .build("pendorite_scrap_block");

blockBuilder()
    .cloning(<block:byg:emeraldite_ore>.properties)
    .dropsNormally()
    .requiresToolToDrop()
    .tab(<tab:byg.byg>)
    .build("emeraldite_block");
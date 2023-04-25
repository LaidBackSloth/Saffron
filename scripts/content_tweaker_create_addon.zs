#loader contenttweaker

import contenttweaker.object.vanilla.property.StandardBlockProperties;

itemBuilder().tab(<tab:misc>).build("red_nether_brick");

itemBuilder().tab(<tab:misc>).build("hardened_ingot");

blockBuilder()
    .cloning(<block:minecraft:iron_block>.properties)
    .dropsNormally()
    .requiresToolToDrop()
    .tab(<tab:misc>)
    .build("hardened_block");

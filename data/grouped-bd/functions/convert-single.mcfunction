# Will create a block display at the executor's position
# Can give custom nbt to entity once created (such as tags) by modifying input.nbt in __temp__ storage
# Anything written in input storage is not preserved

# Don't do anything if given block is invalid
execute if block ~ ~ ~ #kitpvp:invalid_block_display run return 0

data remove storage __temp__ block
data merge storage __temp__ {block:{transformation:{translation:[-0.5f, 0f, -0.5f]}, block_state:{Name:"",Properties:{}}}}
data modify storage __temp__ block merge from storage __temp__ input.nbt

# Get block type
execute at @e[tag=bMarker] run loot replace block 0 49 10000 container.0 mine ~ ~ ~ netherite_pickaxe{Enchantments:[{id:"silk_touch",lvl:1}]}
data modify storage __temp__ block.block_state.Name set from block 0 49 10000 Items[0].id

# Set blockstates (hardcoded for each possible state)
execute at @e[tag=bMarker] if block ~ ~ ~ #kitpvp:blockstate_blocks run function grouped-bd:convert/blockstates

execute summon block_display run data modify entity @s {} merge from storage __temp__ block

data remove storage __temp__ input

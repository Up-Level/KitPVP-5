execute if block ~ ~ ~ #minecraft:fence_gates[facing=north] run data modify entity @e[tag=currentBlock,limit=1] block_state.Properties.facing set value "north"
execute if block ~ ~ ~ #minecraft:fence_gates[facing=south] run data modify entity @e[tag=currentBlock,limit=1] block_state.Properties.facing set value "south"
execute if block ~ ~ ~ #minecraft:fence_gates[facing=east] run data modify entity @e[tag=currentBlock,limit=1] block_state.Properties.facing set value "east"
execute if block ~ ~ ~ #minecraft:fence_gates[facing=west] run data modify entity @e[tag=currentBlock,limit=1] block_state.Properties.facing set value "west"

execute if block ~ ~ ~ #minecraft:fence_gates[in_wall=false] run data modify entity @e[tag=currentBlock,limit=1] block_state.Properties.in_wall set value false
execute if block ~ ~ ~ #minecraft:fence_gates[in_wall=true] run data modify entity @e[tag=currentBlock,limit=1] block_state.Properties.in_wall set value true

execute if block ~ ~ ~ #minecraft:fence_gates[open=false] run data modify entity @e[tag=currentBlock,limit=1] block_state.Properties.open set value false
execute if block ~ ~ ~ #minecraft:fence_gates[open=true] run data modify entity @e[tag=currentBlock,limit=1] block_state.Properties.open set value true

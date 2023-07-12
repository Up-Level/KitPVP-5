execute if block ~ ~ ~ #minecraft:trapdoors[facing=north] run data modify storage __temp__ block.block_state.Properties.facing set value "north"
execute if block ~ ~ ~ #minecraft:trapdoors[facing=south] run data modify storage __temp__ block.block_state.Properties.facing set value "south"
execute if block ~ ~ ~ #minecraft:trapdoors[facing=east] run data modify storage __temp__ block.block_state.Properties.facing set value "east"
execute if block ~ ~ ~ #minecraft:trapdoors[facing=west] run data modify storage __temp__ block.block_state.Properties.facing set value "west"

execute if block ~ ~ ~ #minecraft:trapdoors[half=top] run data modify storage __temp__ block.block_state.Properties.half set value "top"
execute if block ~ ~ ~ #minecraft:trapdoors[half=bottom] run data modify storage __temp__ block.block_state.Properties.half set value "bottom"

execute if block ~ ~ ~ #minecraft:trapdoors[open=false] run data modify storage __temp__ block.block_state.Properties.open set value "false"
execute if block ~ ~ ~ #minecraft:trapdoors[open=true] run data modify storage __temp__ block.block_state.Properties.open set value "true"

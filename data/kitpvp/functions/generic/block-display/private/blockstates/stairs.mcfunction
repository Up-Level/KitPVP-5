execute if block ~ ~ ~ #minecraft:stairs[facing=north] run data modify storage __temp__ block.block_state.Properties.facing set value "north"
execute if block ~ ~ ~ #minecraft:stairs[facing=south] run data modify storage __temp__ block.block_state.Properties.facing set value "south"
execute if block ~ ~ ~ #minecraft:stairs[facing=east] run data modify storage __temp__ block.block_state.Properties.facing set value "east"
execute if block ~ ~ ~ #minecraft:stairs[facing=west] run data modify storage __temp__ block.block_state.Properties.facing set value "west"

execute if block ~ ~ ~ #minecraft:stairs[half=top] run data modify storage __temp__ block.block_state.Properties.half set value "top"
execute if block ~ ~ ~ #minecraft:stairs[half=bottom] run data modify storage __temp__ block.block_state.Properties.half set value "bottom"

execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left] run data modify storage __temp__ block.block_state.Properties.shape set value "inner_left"
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right] run data modify storage __temp__ block.block_state.Properties.shape set value "inner_right"
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left] run data modify storage __temp__ block.block_state.Properties.shape set value "outer_left"
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right] run data modify storage __temp__ block.block_state.Properties.shape set value "outer_right"
execute if block ~ ~ ~ #minecraft:stairs[shape=straight] run data modify storage __temp__ block.block_state.Properties.shape set value "straight"

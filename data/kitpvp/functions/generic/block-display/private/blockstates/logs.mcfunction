execute if block ~ ~ ~ #minecraft:logs[axis=x] run data modify storage __temp__ block.block_state.Properties.axis set value "x"
execute if block ~ ~ ~ #minecraft:logs[axis=y] run data modify storage __temp__ block.block_state.Properties.axis set value "z"
execute if block ~ ~ ~ #minecraft:logs[axis=z] run data modify storage __temp__ block.block_state.Properties.axis set value "z"

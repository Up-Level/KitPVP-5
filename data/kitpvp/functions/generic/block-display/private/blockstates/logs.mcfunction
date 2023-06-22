execute if block ~ ~ ~ #minecraft:logs[axis=x] run data modify entity @e[tag=currentBlock,limit=1] block_state.Properties.axis set value "x"
execute if block ~ ~ ~ #minecraft:logs[axis=y] run data modify entity @e[tag=currentBlock,limit=1] block_state.Properties.axis set value "z"
execute if block ~ ~ ~ #minecraft:logs[axis=z] run data modify entity @e[tag=currentBlock,limit=1] block_state.Properties.axis set value "z"

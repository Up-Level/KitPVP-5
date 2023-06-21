execute if block ~ ~ ~ #minecraft:slabs[type=bottom] run data modify entity @e[tag=currentBlock,limit=1] block_state.Properties.type set value "bottom"
execute if block ~ ~ ~ #minecraft:slabs[type=top] run data modify entity @e[tag=currentBlock,limit=1] block_state.Properties.type set value "top"
execute if block ~ ~ ~ #minecraft:slabs[type=double] run data modify entity @e[tag=currentBlock,limit=1] block_state.Properties.type set value "double"

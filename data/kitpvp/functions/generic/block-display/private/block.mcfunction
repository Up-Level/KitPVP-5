summon block_display ~0.5 ~0.5 ~0.5 {block_state:{Name:"air",Properties:{}},Tags:["currentBlock","newBlockDisplay"],interpolation_duration:0,start_interpolation:1,brightness:{sky:15}}

# Set translation offset
execute store result entity @e[tag=currentBlock,limit=1] transformation.translation[0] float 0.1 run scoreboard players get xOffset temp
execute store result entity @e[tag=currentBlock,limit=1] transformation.translation[1] float 0.1 run scoreboard players get yOffset temp
execute store result entity @e[tag=currentBlock,limit=1] transformation.translation[2] float 0.1 run scoreboard players get zOffset temp

# Get block information at correct point
summon marker 0 0 0 {Tags:["bMarker"]}
execute store result entity @e[tag=bMarker,limit=1] Pos[0] double 1 run scoreboard players get worldX temp
execute store result entity @e[tag=bMarker,limit=1] Pos[1] double 1 run scoreboard players get worldY temp
execute store result entity @e[tag=bMarker,limit=1] Pos[2] double 1 run scoreboard players get worldZ temp

# Get block type
data modify block 0 49 10000 Items[0] set value {id:"air"}
execute at @e[tag=bMarker] run loot replace block 0 49 10000 container.0 mine ~ ~ ~ netherite_pickaxe{Enchantments:[{id:"silk_touch",lvl:1}]}
execute if data block 0 49 10000 Items[0] run data modify entity @e[tag=currentBlock,limit=1] block_state.Name set from block 0 49 10000 Items[0].id

# Set blockstates (hardcoded for each possible state)
execute at @e[tag=bMarker] if block ~ ~ ~ #minecraft:slabs run function kitpvp:generic/block-display/private/slabs
execute at @e[tag=bMarker] if block ~ ~ ~ #minecraft:stairs run function kitpvp:generic/block-display/private/stairs

kill @e[tag=currentBlock,nbt={block_state:{Name:"minecraft:air"}}]
tag @e[tag=currentBlock] remove currentBlock

kill @e[tag=bMarker]

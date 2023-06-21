# Offsets are scaled by 10 to allow for 0.5 offset
scoreboard players operation xOffset temp = worldX temp
scoreboard players operation xOffset temp -= xm temp
scoreboard players operation xOffset temp *= #10 mathf.const
scoreboard players operation xOffset temp -= #5 mathf.const

scoreboard players operation yOffset temp = worldY temp
scoreboard players operation yOffset temp -= ym temp
scoreboard players operation yOffset temp *= #10 mathf.const
scoreboard players operation yOffset temp -= #5 mathf.const

scoreboard players operation zOffset temp = worldZ temp
scoreboard players operation zOffset temp -= zm temp
scoreboard players operation zOffset temp *= #10 mathf.const
scoreboard players operation zOffset temp -= #5 mathf.const


summon block_display ~0.5 ~0.5 ~0.5 {block_state:{Name:"air",Properties:{}},Tags:["currentBlock","newBlockDisplay"],interpolation_duration:0,start_interpolation:1,brightness:{sky:15}}

# Set translation offset
execute store result storage __temp__ translation[0] float 0.1 run scoreboard players get xOffset temp
execute store result storage __temp__ translation[1] float 0.1 run scoreboard players get yOffset temp
execute store result storage __temp__ translation[2] float 0.1 run scoreboard players get zOffset temp
data modify entity @e[tag=currentBlock,limit=1] transformation.translation set from storage __temp__ translation

# Get block type
#data modify block 0 49 10000 Items[0] set value {id:"air"}
execute at @e[tag=bMarker] run loot replace block 0 49 10000 container.0 mine ~ ~ ~ netherite_pickaxe{Enchantments:[{id:"silk_touch",lvl:1}]}
data modify entity @e[tag=currentBlock,limit=1] block_state.Name set from block 0 49 10000 Items[0].id

# Set blockstates (hardcoded for each possible state)
execute at @e[tag=bMarker] if block ~ ~ ~ #kitpvp:blockstate_blocks run function kitpvp:generic/block-display/private/blockstates

tag @e[tag=currentBlock] remove currentBlock

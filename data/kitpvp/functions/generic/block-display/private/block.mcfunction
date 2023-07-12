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


# Set translation offset
execute store result storage __temp__ block.transformation.translation[0] float 0.1 run scoreboard players get xOffset temp
execute store result storage __temp__ block.transformation.translation[1] float 0.1 run scoreboard players get yOffset temp
execute store result storage __temp__ block.transformation.translation[2] float 0.1 run scoreboard players get zOffset temp

# Get block type
execute at @e[tag=bMarker] run loot replace block 0 49 10000 container.0 mine ~ ~ ~ netherite_pickaxe{Enchantments:[{id:"silk_touch",lvl:1}]}
data modify storage __temp__ block.block_state.Name set from block 0 49 10000 Items[0].id

# Set blockstates (hardcoded for each possible state)
execute at @e[tag=bMarker] if block ~ ~ ~ #kitpvp:blockstate_blocks run function kitpvp:generic/block-display/private/blockstates

execute positioned ~0.5 ~0.5 ~0.5 summon block_display run data modify entity @s {} merge from storage __temp__ block

execute at @e[tag=bMarker] if block ~ ~ ~ #kitpvp:blockstate_blocks run data remove storage __temp__ block.block_state.Properties

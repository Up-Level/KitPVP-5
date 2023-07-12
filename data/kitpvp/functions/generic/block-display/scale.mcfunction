data merge storage __temp__ {transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f]}}

# Assume all scaled entities have the same scale for performance reasons
execute store result score scaleFactor temp run data get entity @e[tag=scale,limit=1,sort=random] transformation.scale[0] 10000

execute if score reciprocal temp matches 0 run scoreboard players operation scaleFactor temp *= scale temp
execute if score reciprocal temp matches 1 run scoreboard players operation scaleFactor temp /= scale temp

execute store result storage __temp__ transformation.scale[0] float 0.0001 run scoreboard players get scaleFactor temp
execute store result storage __temp__ transformation.scale[1] float 0.0001 run scoreboard players get scaleFactor temp
execute store result storage __temp__ transformation.scale[2] float 0.0001 run scoreboard players get scaleFactor temp

execute as @e[tag=scale] run function kitpvp:generic/block-display/private/scale-block

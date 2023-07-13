# Input __temp__ input:{scale:float,nbt:compound}
# Anything written in input storage is not preserved.

# Block displays to be scaled should have the "scale" tag.
# The scale input is a relative scale, for example a scale of 0.5 on an object of scale 2 would resize to scale 1.

data remove storage __temp__ block
data merge storage __temp__ {block:{transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f]}}}
data modify storage __temp__ block merge from storage __temp__ input.nbt

execute store result score relScale temp run data get storage __temp__ input.scale 100

# Assume all scaled entities have the same current scale for performance reasons
execute store result score newScale temp run data get entity @e[tag=scale,limit=1,sort=random] transformation.scale[0] 10000

scoreboard players operation newScale temp *= relScale temp
scoreboard players operation newScale temp /= #10000 mathf.const

execute store result storage __temp__ block.transformation.scale[0] float 0.01 run scoreboard players get newScale temp
execute store result storage __temp__ block.transformation.scale[1] float 0.01 run scoreboard players get newScale temp
execute store result storage __temp__ block.transformation.scale[2] float 0.01 run scoreboard players get newScale temp

execute as @e[tag=scale] run function grouped-bd:scale/block

data remove storage __temp__ input

# Calculate translation
data modify storage __temp__ block.transformation.translation set from entity @s transformation.translation
execute store result score x temp run data get storage __temp__ block.transformation.translation[0] 100
execute store result score y temp run data get storage __temp__ block.transformation.translation[1] 100
execute store result score z temp run data get storage __temp__ block.transformation.translation[2] 100

scoreboard players operation x temp *= relScale temp
scoreboard players operation y temp *= relScale temp
scoreboard players operation z temp *= relScale temp

# Calculate scale
execute store result storage __temp__ block.transformation.translation[0] float 0.0001 run scoreboard players get x temp
execute store result storage __temp__ block.transformation.translation[1] float 0.0001 run scoreboard players get y temp
execute store result storage __temp__ block.transformation.translation[2] float 0.0001 run scoreboard players get z temp

# Update entity
data modify entity @s {} merge from storage __temp__ block

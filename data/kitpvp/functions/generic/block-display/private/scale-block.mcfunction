# Calculate translation
data modify storage __temp__ transformation.translation set from entity @s transformation.translation
execute store result score x temp run data get storage __temp__ transformation.translation[0] 10000
execute store result score y temp run data get storage __temp__ transformation.translation[1] 10000
execute store result score z temp run data get storage __temp__ transformation.translation[2] 10000

execute if score reciprocal temp matches 0 run scoreboard players operation x temp *= scale temp
execute if score reciprocal temp matches 0 run scoreboard players operation y temp *= scale temp
execute if score reciprocal temp matches 0 run scoreboard players operation z temp *= scale temp

execute if score reciprocal temp matches 1 run scoreboard players operation x temp /= scale temp
execute if score reciprocal temp matches 1 run scoreboard players operation y temp /= scale temp
execute if score reciprocal temp matches 1 run scoreboard players operation z temp /= scale temp

# Calculate scale
execute store result storage __temp__ transformation.translation[0] float 0.0001 run scoreboard players get x temp
execute store result storage __temp__ transformation.translation[1] float 0.0001 run scoreboard players get y temp
execute store result storage __temp__ transformation.translation[2] float 0.0001 run scoreboard players get z temp

# Update entitty
data modify entity @s transformation merge from storage __temp__ transformation

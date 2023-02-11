attribute @s minecraft:generic.max_health modifier remove 564f0896-d851-48e4-81f9-55714273d251

# Clean up health being greater than max health by applying instant health when they are above it
execute store result score @s temp run attribute @s minecraft:generic.max_health get
execute if score @s health >= @s temp run effect give @s minecraft:instant_health 1 0 true
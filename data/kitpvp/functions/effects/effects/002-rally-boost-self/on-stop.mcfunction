attribute @s minecraft:generic.max_health modifier remove bb635488-f6d1-465a-b656-a8a5a59d5724

# Clean up health being greater than max health by applying instant health when they are above it
execute store result score @s temp run attribute @s minecraft:generic.max_health get
execute if score @s health >= @s temp run effect give @s minecraft:instant_health 1 0 true
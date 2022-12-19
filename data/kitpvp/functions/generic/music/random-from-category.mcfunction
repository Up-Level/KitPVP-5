execute if score @s musicCategory matches 1 store result score songChoice temp run loot spawn ~ ~ ~ loot kitpvp:music/idk
execute if score @s musicCategory matches 2 store result score songChoice temp run loot spawn ~ ~ ~ loot kitpvp:music/ultrakill
execute if score @s musicCategory matches 3 store result score songChoice temp run loot spawn ~ ~ ~ loot kitpvp:music/jungle
execute if score @s musicCategory matches 4 store result score songChoice temp run loot spawn ~ ~ ~ loot kitpvp:music/technohouse

# Prevent same song from being played twice
execute if score songChoice temp = @s currentSong run function kitpvp:generic/music/random-from-category

# Random function from https://www.youtube.com/watch?v=3Ui102TwlBg

execute store result score songChoice temp run loot spawn ~ ~ ~ loot kitpvp:loot_box/random
#execute store result score songChoice temp run time query gametime

execute if score @s musicCategory matches 1 run scoreboard players operation songChoice temp %= #6 mathf.const

execute if score @s musicCategory matches 2 run scoreboard players operation songChoice temp %= #2 mathf.const
execute if score @s musicCategory matches 2 run scoreboard players add songChoice temp 10

execute if score @s musicCategory matches 3 run scoreboard players operation songChoice temp %= #3 mathf.const
execute if score @s musicCategory matches 3 run scoreboard players add songChoice temp 20

execute at @s run function kitpvp:generic/music/play-song

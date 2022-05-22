execute store result score songChoice temp run time query gametime

execute if score @s musicCategory matches 1 run scoreboard players operation songChoice temp %= #5 mathf.const

execute if score @s musicCategory matches 2 run scoreboard players operation songChoice temp %= #2 mathf.const
execute if score @s musicCategory matches 2 run scoreboard players operation songChoice temp += #5 mathf.const

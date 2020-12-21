# Executed as players not in game

effect give @s saturation 1 255 true
effect give @s resistance 1 255 true
effect give @s weakness 1 255 true

execute at @s if entity @s[y=0,dy=-50] run tp @s 10000 64 0

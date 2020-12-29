# Executed as players not in game

clear @s golden_carrot

effect give @s saturation 1 255 true
effect give @s resistance 1 255 true
effect give @s weakness 1 255 true

execute at @s if entity @s[y=0,dy=-50] run tp @s 10000 64 0

execute if score @s crouch matches 1 unless entity @s[nbt={Inventory:[{tag:{menuToggle:1b}}]}] run function kitpvp:interface/menus/give/main-menu-toggle

function kitpvp:interface/menus/main-menu/tick

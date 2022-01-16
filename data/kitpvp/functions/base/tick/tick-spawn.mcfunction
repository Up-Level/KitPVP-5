# Executed as players not in game

clear @s[gamemode=adventure] golden_carrot

effect give @s[gamemode=adventure] saturation 1 255 true
effect give @s[gamemode=adventure] resistance 1 255 true
effect give @s[gamemode=adventure] weakness 1 255 true
effect give @s[gamemode=adventure] fire_resistance 1 0 true

execute at @s if entity @s[y=0,dy=-50] run tp @s -10000 64 0

execute if entity @s[gamemode=!creative] if predicate utilities:is_sneaking unless entity @s[nbt={Inventory:[{tag:{menuToggle:1b}}]}] run function kitpvp:interface/menus/give/main-menu-display
function kitpvp:interface/menus/main-menu/tick

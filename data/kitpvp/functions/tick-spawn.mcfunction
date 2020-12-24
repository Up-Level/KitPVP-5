# Executed as players not in game

clear @s golden_carrot

effect give @s saturation 1 255 true
effect give @s resistance 1 255 true
effect give @s weakness 1 255 true

execute at @s if entity @s[y=0,dy=-50] run tp @s 10000 64 0

item entity @s hotbar.0 replace warped_fungus_on_a_stick{display:{Name:'{"text":"Toggle Menu","italic": false}'},menuToggle:1b}

execute if data entity @s SelectedItem.tag.menuToggle if entity @s[tag=!inMenu] run tag @s add inMenu
execute if data entity @s SelectedItem.tag.menuToggle if entity @s[tag=inMenu] run tag @s remove inMenu

execute if entity @s[tag=inMenu] run function kitpvp:interface/menus/main-menu

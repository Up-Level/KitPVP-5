execute if entity @s[gamemode=!adventure] run tag @s remove hasMainMenuDisplay
execute if entity @s[tag=!hasMainMenuDisplay,gamemode=adventure] run function kitpvp:interface/menus/give/main-menu-display

execute if data entity @s SelectedItem.tag.menuToggle if score @s bin.fungus matches 1 if entity @s[scores={inMenu=0}] run function kitpvp:interface/menus/main-menu/enable
execute if data entity @s SelectedItem.tag.menuToggle if score @s bin.fungus matches 1 if entity @s[scores={inMenu=1..3}] run function kitpvp:interface/menus/main-menu/disable

execute if entity @s[scores={inMenu=1,menuTriggers=1..}] run function kitpvp:interface/menus/main-menu/triggers

execute if entity @s[scores={inMenu=1..}] run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n"

execute if entity @s[scores={inMenu=1}] run function kitpvp:interface/menus/main-menu/display
execute if entity @s[scores={inMenu=2}] run function kitpvp:interface/menus/main-menu/submenus/select-gamemode
execute if entity @s[scores={inMenu=3}] run function kitpvp:interface/menus/main-menu/submenus/select-map

execute if entity @s[tag=!hasMainMenuToggle,gamemode=adventure] run function kitpvp:interface/menus/give/main-menu-toggle

execute if data entity @s SelectedItem.tag.menuToggle if score @s useFungusStick matches 1 if entity @s[tag=!inMenu] run function kitpvp:interface/menus/main-menu/enable
execute if data entity @s SelectedItem.tag.menuToggle if score @s useFungusStick matches 1 if entity @s[scores={inMenu=1}] run function kitpvp:interface/menus/main-menu/disable

execute if entity @s[scores={inMenu=1}] run function kitpvp:interface/menus/main-menu/display
execute if score @s[scores={inMenu=1}] menuTriggers matches 1.. run function kitpvp:interface/menus/main-menu/triggers

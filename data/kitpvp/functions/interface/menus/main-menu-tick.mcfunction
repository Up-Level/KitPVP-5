execute if entity @s[tag=!hasMainMenuToggle,gamemode=adventure] run function kitpvp:interface/menus/give/main-menu

execute if data entity @s SelectedItem.tag.menuToggle if score @s useFungusStick matches 1 if entity @s[tag=!inMenu] run function kitpvp:interface/menus/private/show-menu
execute if data entity @s SelectedItem.tag.menuToggle if score @s useFungusStick matches 1 if entity @s[tag=inMenu] run tag @s remove inMenu

execute if entity @s[tag=inMenu] run function kitpvp:interface/menus/main-menu

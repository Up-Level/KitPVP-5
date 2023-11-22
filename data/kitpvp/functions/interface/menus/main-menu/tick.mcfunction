execute if entity @s[gamemode=!adventure] run tag @s remove hasMainMenuDisplay
execute if entity @s[tag=!hasMainMenuDisplay,gamemode=adventure] run function kitpvp:interface/menus/give/main-menu-display

execute if score @s bin.fungus matches 1 if data entity @s SelectedItem.tag.menuToggle unless score @s inMenu matches 1..3 run function kitpvp:interface/menus/main-menu/enable
execute if score @s bin.fungus matches 1 if data entity @s SelectedItem.tag.menuToggle if score @s inMenu matches 1..3 run function kitpvp:interface/menus/main-menu/disable
# disable menu if drop fungus menu item, this sucks because it doesnt care if the fungus item dropped is the menu one, but to be fair the two lines above dont actually work in off hand so they are trash too!
execute if score @s bin.fungusDropped matches 1 if score @s inMenu matches 1..3 run function kitpvp:interface/menus/main-menu/disable

execute if entity @s[scores={inMenu=1,menuTriggers=1..}] run function kitpvp:interface/menus/main-menu/triggers

execute if entity @s[scores={inMenu=1}] run function kitpvp:interface/menus/main-menu/display
execute if entity @s[scores={inMenu=2}] run function kitpvp:interface/menus/main-menu/submenus/select-gamemode
execute if entity @s[scores={inMenu=3}] run function kitpvp:interface/menus/main-menu/submenus/select-map

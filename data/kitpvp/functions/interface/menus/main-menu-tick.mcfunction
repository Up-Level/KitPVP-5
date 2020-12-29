item entity @s hotbar.0 replace warped_fungus_on_a_stick{display:{Name:'{"text":"Toggle Menu","italic": false}'},menuToggle:1b}

execute if data entity @s SelectedItem.tag.menuToggle if score @s useFungusStick matches 1 if entity @s[tag=!inMenu] run function kitpvp:interface/menus/private/show-menu
execute if data entity @s SelectedItem.tag.menuToggle if score @s useFungusStick matches 1 if entity @s[tag=inMenu] run tag @s remove inMenu

execute if entity @s[tag=inMenu] run function kitpvp:interface/menus/main-menu

execute if score @s menuTriggers matches 1 run scoreboard players set @s ready 1
execute if score @s menuTriggers matches 2 run scoreboard players reset @s ready

execute if score @s menuTriggers matches 3 run team join red
execute if score @s menuTriggers matches 4 run team join blue
execute if score @s menuTriggers matches 5 run team join green
execute if score @s menuTriggers matches 6 run team join yellow
execute if score @s menuTriggers matches 7 run team leave @s

execute if score @s menuTriggers matches 8 run function kitpvp:interface/menus/main-menu/disable

scoreboard players enable @s[tag=inMenu] menuTriggers

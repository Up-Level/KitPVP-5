execute if score @s menuTriggers matches 1 run scoreboard players reset @s ready
execute if score @s menuTriggers matches 2 run scoreboard players set @s ready 1

execute if score @s menuTriggers matches 3 run team join red
execute if score @s menuTriggers matches 4 run team join blue
execute if score @s menuTriggers matches 5 run team join green
execute if score @s menuTriggers matches 6 run team join yellow
execute if score @s menuTriggers matches 7 run team leave @s

execute if score @s menuTriggers matches 8 run tag @s add ingameMusic
execute if score @s menuTriggers matches 9 run tag @s remove ingameMusic

execute if score @s menuTriggers matches 10 run tag @s add menuMusic
execute if score @s menuTriggers matches 10 run function kitpvp:generic/music/skip-song

execute if score @s menuTriggers matches 11 run tag @s remove menuMusic
execute if score @s menuTriggers matches 11 run stopsound @s record

execute if score @s menuTriggers matches 100 run function kitpvp:interface/menus/main-menu/disable

scoreboard players set @s menuTriggers 0
scoreboard players enable @s[scores={inMenu=1}] menuTriggers

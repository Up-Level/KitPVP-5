scoreboard players remove @s gm.mkill-timer 1

execute if score @s bin.kill matches 1.. run scoreboard players operation @s gm.mkill += @s bin.kill
execute if score @s gm.mkill-timer matches ..0 run scoreboard players set @s gm.mkill 0

execute if score @s bin.kill matches 1.. run function kitpvp:gamemode/utility/killstreak/private/on-mkill

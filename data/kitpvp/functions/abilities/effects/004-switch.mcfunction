
 execute if score @s a1.Mode matches 0 run tellraw @a "ass2"
 execute if score @s a1.Mode matches 1 run tellraw @a "ass1"

execute if score type itemData matches 1 run scoreboard players add @s a1.Mode 1
execute if score type itemData matches 1 if score @s a1.Mode matches 2 run scoreboard players set @s a1.Mode 0

execute if score type itemData matches 2 run scoreboard players add @s a2.Mode 1
execute if score type itemData matches 2 if score @s a2.Mode matches 2 run scoreboard players set @s a2.Mode 0

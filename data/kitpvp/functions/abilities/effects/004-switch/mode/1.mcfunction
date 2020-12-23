execute if score type itemData matches 1 run tellraw @a "a1 mode 1"
execute if score type itemData matches 2 run tellraw @a "a2 mode 1"

execute if score type itemData matches 1 run scoreboard players set @s a1.Mode 0
execute if score type itemData matches 2 run scoreboard players set @s a2.Mode 0

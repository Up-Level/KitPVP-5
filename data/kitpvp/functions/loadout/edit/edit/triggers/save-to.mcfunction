execute if score @s saveToT matches 0.. run scoreboard players operation @s slotEdit = @s saveToT
execute if score @s saveToT matches 0.. run scoreboard players enable @s saveToT
execute if score @s saveToT matches 0.. run scoreboard players set @s saveToT -1

function kitpvp:loadout/edit/save-to-slot/save-to-slot

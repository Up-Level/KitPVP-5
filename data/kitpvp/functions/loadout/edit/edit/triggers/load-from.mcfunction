execute if score @s loadFromT matches 0.. run scoreboard players operation @s slotEdit = @s loadFromT
execute if score @s loadFromT matches 0.. run scoreboard players enable @s loadFromT
execute if score @s loadFromT matches 0.. run scoreboard players set @s loadFromT -1

function kitpvp:loadout/edit/load-from-slot/load-from-slot

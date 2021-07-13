execute if score @s l.e.loadT matches 0.. run scoreboard players operation @s l.e.slotEdit = @s l.e.loadT
execute if score @s l.e.loadT matches 0.. run scoreboard players enable @s l.e.loadT
execute if score @s l.e.loadT matches 0.. run scoreboard players set @s l.e.loadT -1

function kitpvp:loadout/edit/load-from-slot/load-from-slot

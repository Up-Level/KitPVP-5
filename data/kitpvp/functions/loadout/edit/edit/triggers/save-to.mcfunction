execute if score @s l.e.saveT matches 0.. run scoreboard players operation @s l.e.slotEdit = @s l.e.saveT
execute if score @s l.e.saveT matches 0.. run scoreboard players enable @s l.e.saveT
execute if score @s l.e.saveT matches 0.. run scoreboard players set @s l.e.saveT -1

function kitpvp:loadout/edit/save-to-slot/save-to-slot

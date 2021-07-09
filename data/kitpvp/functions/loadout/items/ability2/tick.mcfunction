execute if score @s a2.useCD matches 1 if score @s a2.CDCount matches 0.. unless score @s a2.ChargeMax = @s a2.ChargeCount run scoreboard players remove @s a2.CDCount 1
execute if score @s a2.useCD matches 1 if score @s a2.CDCount matches ..0 run scoreboard players add @s a2.ChargeCount 1
execute if score @s a2.useCD matches 1 if score @s a2.CDCount matches ..0 run scoreboard players operation @s a2.CDCount = @s a2.CD

execute if score @s ability2 matches 1 run function kitpvp:loadout/items/ability2/items/001/tick
execute if score @s ability2 matches 2 run function kitpvp:loadout/items/ability2/items/002/tick
execute if score @s ability2 matches 3 run function kitpvp:loadout/items/ability2/items/003/tick
execute if score @s ability2 matches 4 run function kitpvp:loadout/items/ability2/items/004/tick
execute if score @s ability2 matches 5 run function kitpvp:loadout/items/ability2/items/005/tick
execute if score @s ability2 matches 6 run function kitpvp:loadout/items/ability2/items/006/tick
execute if score @s ability2 matches 7 run function kitpvp:loadout/items/ability2/items/007/tick
execute if score @s ability2 matches 8 run function kitpvp:loadout/items/ability2/items/008/tick
execute if score @s ability2 matches 9 run function kitpvp:loadout/items/ability2/items/009/tick
execute if score @s ability2 matches 10 run function kitpvp:loadout/items/ability2/items/010/tick

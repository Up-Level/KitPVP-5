execute if score @s ability2 matches 0 run scoreboard players set @s a2.CD 0
execute if score @s ability2 matches 0 run scoreboard players operation @s a2.CDCount = @s a2.CD
execute if score @s ability2 matches 0 run scoreboard players set @s a2.ChargeMax 0
execute if score @s ability2 matches 0 run scoreboard players operation @s a2.ChargeCount = @s a2.ChargeMax
execute if score @s ability2 matches 0 run scoreboard players set @s a2.Mode 0

execute if score @s ability2 matches 1 run function kitpvp:loadout/items/ability2/items/001/start
execute if score @s ability2 matches 2 run function kitpvp:loadout/items/ability2/items/002/start
execute if score @s ability2 matches 3 run function kitpvp:loadout/items/ability2/items/003/start
execute if score @s ability2 matches 4 run function kitpvp:loadout/items/ability2/items/004/start
execute if score @s ability2 matches 5 run function kitpvp:loadout/items/ability2/items/005/start
execute if score @s ability2 matches 6 run function kitpvp:loadout/items/ability2/items/006/start
execute if score @s ability2 matches 7 run function kitpvp:loadout/items/ability2/items/007/start
execute if score @s ability2 matches 8 run function kitpvp:loadout/items/ability2/items/008/start
execute if score @s ability2 matches 9 run function kitpvp:loadout/items/ability2/items/009/start
execute if score @s ability2 matches 10 run function kitpvp:loadout/items/ability2/items/010/start

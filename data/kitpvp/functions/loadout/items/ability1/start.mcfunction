execute if score @s ability1 matches 0 run scoreboard players set @s a1.CD 0
execute if score @s ability1 matches 0 run scoreboard players operation @s a1.CDCount = @s a1.CD
execute if score @s ability1 matches 0 run scoreboard players set @s a1.ChargeMax 0
execute if score @s ability1 matches 0 run scoreboard players operation @s a1.ChargeCount = @s a1.ChargeMax
execute if score @s ability1 matches 0 run scoreboard players set @s a1.Mode 0

execute if score @s ability1 matches 1 run function kitpvp:loadout/items/ability1/items/001/start
execute if score @s ability1 matches 2 run function kitpvp:loadout/items/ability1/items/002/start
execute if score @s ability1 matches 3 run function kitpvp:loadout/items/ability1/items/003/start
execute if score @s ability1 matches 4 run function kitpvp:loadout/items/ability1/items/004/start
execute if score @s ability1 matches 5 run function kitpvp:loadout/items/ability1/items/005/start
execute if score @s ability1 matches 6 run function kitpvp:loadout/items/ability1/items/006/start
execute if score @s ability1 matches 7 run function kitpvp:loadout/items/ability1/items/007/start
execute if score @s ability1 matches 8 run function kitpvp:loadout/items/ability1/items/008/start
execute if score @s ability1 matches 9 run function kitpvp:loadout/items/ability1/items/009/start
execute if score @s ability1 matches 10 run function kitpvp:loadout/items/ability1/items/010/start

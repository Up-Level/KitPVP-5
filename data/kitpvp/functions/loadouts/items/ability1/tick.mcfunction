execute if score @s a1.CDCount matches 0.. unless score @s a1.ChargeMax = @s a1.ChargeCount run scoreboard players remove @s a1.CDCount 1
execute if score @s a1.CDCount matches ..0 run scoreboard players add @s a1.ChargeCount 1
execute if score @s a1.CDCount matches ..0 run scoreboard players operation @s a1.CDCount = @s a1.CDMax

execute if score @s ability1 matches 1 run function kitpvp:loadouts/items/ability1/items/001/tick
execute if score @s ability1 matches 2 run function kitpvp:loadouts/items/ability1/items/002/tick
execute if score @s ability1 matches 3 run function kitpvp:loadouts/items/ability1/items/003/tick
execute if score @s ability1 matches 4 run function kitpvp:loadouts/items/ability1/items/004/tick
execute if score @s ability1 matches 5 run function kitpvp:loadouts/items/ability1/items/005/tick
execute if score @s ability1 matches 6 run function kitpvp:loadouts/items/ability1/items/006/tick
execute if score @s ability1 matches 7 run function kitpvp:loadouts/items/ability1/items/007/tick
execute if score @s ability1 matches 8 run function kitpvp:loadouts/items/ability1/items/008/tick
execute if score @s ability1 matches 9 run function kitpvp:loadouts/items/ability1/items/009/tick
execute if score @s ability1 matches 10 run function kitpvp:loadouts/items/ability1/items/010/tick

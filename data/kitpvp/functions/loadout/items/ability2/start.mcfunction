execute if score @s ability2 matches 0 run scoreboard players set @s a2.CD 0
execute if score @s ability2 matches 0 run scoreboard players operation @s a2.CDCount = @s a2.CD
execute if score @s ability2 matches 0 run scoreboard players set @s a2.ChargeMax 0
execute if score @s ability2 matches 0 run scoreboard players operation @s a2.ChargeCount = @s a2.ChargeMax
execute if score @s ability2 matches 0 run scoreboard players set @s a2.Mode 0

execute if score @s ability2 matches 1 run function kitpvp:loadout/items/ability2/items/001-build/start
execute if score @s ability2 matches 2 run function kitpvp:loadout/items/ability2/items/002-tp/start

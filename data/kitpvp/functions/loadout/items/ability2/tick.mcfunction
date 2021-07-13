execute if score @s a2.useCD matches 1 if score @s a2.CDCount matches 0.. unless score @s a2.ChargeMax = @s a2.ChargeCount run scoreboard players remove @s a2.CDCount 1
execute if score @s a2.useCD matches 1 if score @s a2.CDCount matches ..0 run scoreboard players add @s a2.ChargeCount 1
execute if score @s a2.useCD matches 1 if score @s a2.CDCount matches ..0 run scoreboard players operation @s a2.CDCount = @s a2.CD

# Disabled ones don't have tick
#execute if score @s l.use.a2 matches 1 run function kitpvp:loadout/items/ability2/items/001-build/tick
#execute if score @s l.use.a2 matches 2 run function kitpvp:loadout/items/ability2/items/002-tp/tick
execute if score @s l.use.a2 matches 3 run function kitpvp:loadout/items/ability2/items/003-climb/tick
#execute if score @s l.use.a2 matches 4 run function kitpvp:loadout/items/ability2/items/004-horse/tick

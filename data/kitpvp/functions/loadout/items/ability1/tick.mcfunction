execute if score @s a1.useCD matches 1 if score @s a1.CDCount matches 0.. unless score @s a1.ChargeMax = @s a1.ChargeCount run scoreboard players remove @s a1.CDCount 1
execute if score @s a1.useCD matches 1 if score @s a1.CDCount matches ..0 run scoreboard players add @s a1.ChargeCount 1
execute if score @s a1.useCD matches 1 if score @s a1.CDCount matches ..0 run scoreboard players operation @s a1.CDCount = @s a1.CD

# Disabled ones don't have tick
#execute if score @s l.use.a1 matches 1 run function kitpvp:loadout/items/ability1/items/001-magic-shield/tick
#execute if score @s l.use.a1 matches 2 run function kitpvp:loadout/items/ability1/items/002-block-disguise/tick
#execute if score @s l.use.a1 matches 3 run function kitpvp:loadout/items/ability1/items/003-smoke-bomb/tick
#execute if score @s l.use.a1 matches 4 run function kitpvp:loadout/items/ability1/items/004-fireball/tick

# Custom
execute if score @s l.use.a1 matches -1 run function kitpvp:loadout/items/ability1/items/custom/001-super-jump/tick
execute if score @s l.use.a1 matches -2 run function kitpvp:loadout/items/ability1/items/custom/002-totem/tick
execute if score @s l.use.a1 matches -3 run function kitpvp:loadout/items/ability1/items/custom/003-shield/clear
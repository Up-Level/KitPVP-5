scoreboard players set @s a.0 0
scoreboard players set @s a.1 0
scoreboard players set @s a.2 0
scoreboard players set @s a.3 0

execute if score @s l.use.arm matches 1 run function kitpvp:loadout/items/armor/items/001-knight/start
execute if score @s l.use.arm matches 2 run function kitpvp:loadout/items/armor/items/002-scout/start
execute if score @s l.use.arm matches 3 run function kitpvp:loadout/items/armor/items/003-heavy/start
execute if score @s l.use.arm matches 4 run function kitpvp:loadout/items/armor/items/004-hazard/start
execute if score @s l.use.arm matches 5 run function kitpvp:loadout/items/armor/items/005-elytra/start
execute if score @s l.use.arm matches 6 run function kitpvp:loadout/items/armor/items/006-warden/start

# Custom
execute if score @s l.use.arm matches -1 run function kitpvp:loadout/items/armor/items/custom/001-infected-prime/start
execute if score @s l.use.arm matches -2 run function kitpvp:loadout/items/armor/items/custom/002-infected/start

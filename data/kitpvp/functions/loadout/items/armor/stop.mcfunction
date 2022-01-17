execute if score @s l.use.arm matches 1 run function kitpvp:loadout/items/armor/items/001-knight/stop
execute if score @s l.use.arm matches 2 run function kitpvp:loadout/items/armor/items/002-scout/stop
execute if score @s l.use.arm matches 3 run function kitpvp:loadout/items/armor/items/003-heavy/stop
execute if score @s l.use.arm matches 4 run function kitpvp:loadout/items/armor/items/004-hazard/stop

# Custom
execute if score @s l.use.arm matches -1 run function kitpvp:loadout/items/armor/items/custom/001-infected-prime/stop
execute if score @s l.use.arm matches -2 run function kitpvp:loadout/items/armor/items/custom/002-infected/stop

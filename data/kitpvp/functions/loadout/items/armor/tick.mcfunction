# Disabled ones don't have tick
#execute if score @s l.use.arm matches 1 run function kitpvp:loadout/items/armor/items/001-knight/tick
#execute if score @s l.use.arm matches 2 run function kitpvp:loadout/items/armor/items/002-scout/tick
#execute if score @s l.use.arm matches 3 run function kitpvp:loadout/items/armor/items/003-heavy/tick
execute if score @s l.use.arm matches 4 run function kitpvp:loadout/items/armor/items/004-hazard/tick
execute if score @s l.use.arm matches 5 run function kitpvp:loadout/items/armor/items/005-elytra/tick
execute if score @s l.use.arm matches 6 run function kitpvp:loadout/items/armor/items/006-warden/tick

# Custom
execute if score @s l.use.arm matches -1 run function kitpvp:loadout/items/armor/items/custom/001-infected-prime/tick
execute if score @s l.use.arm matches -2 run function kitpvp:loadout/items/armor/items/custom/002-infected/tick

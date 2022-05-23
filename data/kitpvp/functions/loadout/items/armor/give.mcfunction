execute if score @s l.use.arm matches 1 run function kitpvp:loadout/items/armor/items/001-knight/give
execute if score @s l.use.arm matches 2 run function kitpvp:loadout/items/armor/items/002-scout/give
execute if score @s l.use.arm matches 3 run function kitpvp:loadout/items/armor/items/003-heavy/give
execute if score @s l.use.arm matches 4 run function kitpvp:loadout/items/armor/items/004-hazard/give
execute if score @s l.use.arm matches 5 run function kitpvp:loadout/items/armor/items/005-elytra/give

# Custom
execute if score @s l.use.arm matches -1 run function kitpvp:loadout/items/armor/items/custom/001-infected-prime/give
execute if score @s l.use.arm matches -2 run function kitpvp:loadout/items/armor/items/custom/002-infected/give

execute if score @s l.use.arm matches 1 run function kitpvp:loadout/items/armor/items/001-knight/clear
execute if score @s l.use.arm matches 2 run function kitpvp:loadout/items/armor/items/002-scout/clear
execute if score @s l.use.arm matches 3 run function kitpvp:loadout/items/armor/items/003-heavy/clear
execute if score @s l.use.arm matches 4 run function kitpvp:loadout/items/armor/items/004-hazard/clear

# Custom
execute if score @s l.use.arm matches -1 run function kitpvp:loadout/items/armor/items/custom/001-infected/clear

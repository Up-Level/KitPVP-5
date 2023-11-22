# Disabled ones don't have tick
#execute if score @s l.use.a2 matches 1 run function kitpvp:loadout/items/ability2/items/001-build/tick
#execute if score @s l.use.a2 matches 2 run function kitpvp:loadout/items/ability2/items/002-mine/tick
execute if score @s l.use.a2 matches 3 run function kitpvp:loadout/items/ability2/items/003-ninja-gear/tick
#execute if score @s l.use.a2 matches 4 run function kitpvp:loadout/items/ability2/items/004-horse/tick
execute if score @s l.use.a2 matches 5 run function kitpvp:loadout/items/ability2/items/005-wolf/tick

# Custom
execute if score @s l.use.a2 matches -1 run function kitpvp:loadout/items/ability2/items/custom/001-zombie-climb/tick
execute if score @s l.use.a2 matches -2 run function kitpvp:loadout/items/ability2/items/custom/002-tp/tick
execute if score @s l.use.a2 matches 1 run function kitpvp:loadout/items/ability2/items/001-build/start
execute if score @s l.use.a2 matches 2 run function kitpvp:loadout/items/ability2/items/002-mine/start
execute if score @s l.use.a2 matches 3 run function kitpvp:loadout/items/ability2/items/003-climb/start
execute if score @s l.use.a2 matches 4 run function kitpvp:loadout/items/ability2/items/004-horse/start
execute if score @s l.use.a2 matches 5 run function kitpvp:loadout/items/ability2/items/005-wolf/start

# Custom
execute if score @s l.use.a2 matches -1 run function kitpvp:loadout/items/ability2/items/custom/001-zombie-climb/start
execute if score @s l.use.a2 matches -2 run function kitpvp:loadout/items/ability2/items/custom/002-tp/start
execute if score @s l.use.a1 matches 1 run function kitpvp:loadout/items/ability1/items/001-magic-shield/start
execute if score @s l.use.a1 matches 2 run function kitpvp:loadout/items/ability1/items/002-block-disguise/start
execute if score @s l.use.a1 matches 3 run function kitpvp:loadout/items/ability1/items/003-smoke-bomb/start
execute if score @s l.use.a1 matches 4 run function kitpvp:loadout/items/ability1/items/004-fireball/start
#execute if score @s l.use.a1 matches 5 run function kitpvp:loadout/items/ability1/items/005-rally/start

# Custom
execute if score @s l.use.a1 matches -1 run function kitpvp:loadout/items/ability1/items/custom/001-super-jump/start
execute if score @s l.use.a1 matches -2 run function kitpvp:loadout/items/ability1/items/custom/002-totem/start
execute if score @s l.use.a1 matches -3 run function kitpvp:loadout/items/ability1/items/custom/003-shield/clear
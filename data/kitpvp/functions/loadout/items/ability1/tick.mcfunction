

#execute if score @s l.use.a1 matches 4 run function kitpvp:loadout/items/ability1/items/004-fireball/tick
execute if score @s l.use.a1 matches 5 run function kitpvp:loadout/items/ability1/items/005-rally/tick

# Custom
execute if score @s l.use.a1 matches -1 run function kitpvp:loadout/items/ability1/items/custom/001-super-jump/tick
execute if score @s l.use.a1 matches -2 run function kitpvp:loadout/items/ability1/items/custom/002-totem/tick
execute if score @s l.use.a1 matches -3 run function kitpvp:loadout/items/ability1/items/custom/003-shield/clear
#execute if score @s l.use.a1 matches -4 run function kitpvp:loadout/items/ability1/items/custom/004-magic-shield/tick
#execute if score @s l.use.a1 matches -5 run function kitpvp:loadout/items/ability1/items/custom/005-block-disguise/tick
execute if score @s l.use.a1 matches 1 run function kitpvp:loadout/items/ability1/items/001-magic-shield/clear
execute if score @s l.use.a1 matches 2 run function kitpvp:loadout/items/ability1/items/002-block-disguise/clear

execute if score @s l.use.a1 matches 4 run function kitpvp:loadout/items/ability1/items/004-fireball/clear
execute if score @s l.use.a1 matches 5 run function kitpvp:loadout/items/ability1/items/005-rally/clear

# Custom
execute if score @s l.use.a1 matches -1 run function kitpvp:loadout/items/ability1/items/custom/001-super-jump/clear
execute if score @s l.use.a1 matches -2 run function kitpvp:loadout/items/ability1/items/custom/002-totem/clear
execute if score @s l.use.a1 matches -3 run function kitpvp:loadout/items/ability1/items/custom/003-shield/clear
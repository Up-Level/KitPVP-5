# Disabled ones don't have tick
#execute if score @s l.use.util matches 1 run function kitpvp:loadout/items/utility/items/001-pirate/tick
#execute if score @s l.use.util matches 2 run function kitpvp:loadout/items/utility/items/002-respawn/tick
#execute if score @s l.use.util matches 3 run function kitpvp:loadout/items/utility/items/003-gale-amulet/tick
#execute if score @s l.use.util matches 4 run function kitpvp:loadout/items/utility/items/004-levitation/tick

# Custom
#execute if score @s l.use.util matches -2 run function kitpvp:loadout/items/utility/items/custom/001-apple/tick
execute if score @s l.use.util matches -2 run function kitpvp:loadout/items/utility/items/custom/002-bloodlust/tick
#> kitpvp:gamemode/05-infected/spawn
# @context player

# Remove respawning tag
tag @s remove respawning

advancement revoke @s only kitpvp:killed-by-player

# Give players their items
function kitpvp:loadout/edit/edit/revoke-edit
execute if entity @s[team=none] run function kitpvp:loadout/equip/grant-items-selected
execute if entity @s[team=green,tag=!firstInfected] run function kitpvp:loadout/equip/preset/grant-items-infected
execute if entity @s[team=green,tag=firstInfected] run function kitpvp:loadout/equip/preset/grant-items-infected-prime

item replace entity @s hotbar.8 with cooked_beef 64

# Teleport player(s) to map
function kitpvp:map/spawn/single-player

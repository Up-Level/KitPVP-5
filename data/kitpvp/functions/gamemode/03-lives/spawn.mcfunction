#> kitpvp:gamemode/03-lives/spawn
# @context player

# Remove respawning tag
tag @s remove respawning

advancement revoke @s only kitpvp:killed-by-player

# Give players their items
function kitpvp:loadout/edit/edit/revoke-edit
function kitpvp:loadout/equip/grant-items-selected

item replace entity @s hotbar.8 with cooked_beef 8

# Teleport player(s) to map
function kitpvp:map/spawn/single-player

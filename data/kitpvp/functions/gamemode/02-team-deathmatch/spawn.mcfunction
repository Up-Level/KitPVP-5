#> kitpvp:gamemode/02-team-deathmatch/spawn
# @context player

# Remove respawning tag
tag @s remove respawning

# Give players their items
function kitpvp:loadout/edit/edit/revoke-edit
function kitpvp:loadout/grant-items-selected

# Teleport player(s) to map
function kitpvp:map/spawn/singleplayer

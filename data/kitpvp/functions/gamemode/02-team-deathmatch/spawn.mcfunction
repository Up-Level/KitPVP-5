#> kitpvp:gamemode/02-team-deathmatch/spawn
# @context player

# Remove respawning tag
tag @s remove respawning

# Give players their items
function kitpvp:loadout/edit/edit/revoke-edit
function kitpvp:loadout/grant-items-selected

item replace entity @s hotbar.8 with cooked_beef 5

# Teleport player(s) to map
function kitpvp:map/spawn/singleplayer

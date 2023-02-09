#> kitpvp:gamemode/00-template/spawn
# @context player

# Remove respawning tag
tag @s remove respawning

# Give players their items
function kitpvp:loadout/edit/edit/revoke-edit
function kitpvp:loadout/equip/grant-items-selected

# Teleport player(s) to map
function kitpvp:map/spawn/single-player

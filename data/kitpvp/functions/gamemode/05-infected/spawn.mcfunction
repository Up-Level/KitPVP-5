#> kitpvp:gamemode/05-infected/spawn
# @context player

# Remove respawning tag
tag @s remove respawning

# Give players their items
function kitpvp:loadout/edit/edit/revoke-edit
execute if entity @s[team=none] run function kitpvp:loadout/grant-items-selected
execute if entity @s[team=green] run function kitpvp:loadout/grant-items-preset/grant-items-infected

item replace entity @s hotbar.8 with cooked_beef 64

# Teleport player(s) to map
function kitpvp:map/spawn/singleplayer

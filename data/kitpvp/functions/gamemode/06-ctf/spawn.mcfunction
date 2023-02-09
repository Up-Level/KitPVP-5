#> kitpvp:gamemode/06-ctf/spawn
# @context player

# Remove respawning tag
tag @s remove respawning

# Give players their items
function kitpvp:loadout/edit/edit/revoke-edit
function kitpvp:loadout/equip/grant-items-selected

item replace entity @s hotbar.8 with cooked_beef 8

# Teleport player(s) to map
tp @s[team=red] @e[tag=redCtfSpawn,limit=1]
tp @s[team=blue] @e[tag=blueCtfSpawn,limit=1]
tp @s[team=green] @e[tag=greenCtfSpawn,limit=1]
tp @s[team=yellow] @e[tag=yellowCtfSpawn,limit=1]

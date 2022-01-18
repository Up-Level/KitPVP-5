#> kitpvp:gamemode/06-ctf/spawn
# @context player

# Remove respawning tag
tag @s remove respawning

# Give players their items
function kitpvp:loadout/edit/edit/revoke-edit
function kitpvp:loadout/grant-items-selected

# Teleport player(s) to map
tp @s[team=red] @e[tag=flagRed,limit=1]
tp @s[team=blue] @e[tag=flagBlue,limit=1]
tp @s[team=green] @e[tag=flagGreen,limit=1]
tp @s[team=yellow] @e[tag=flagYellow,limit=1]

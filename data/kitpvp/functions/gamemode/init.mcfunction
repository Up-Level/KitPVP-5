# In case this wasn't done earlier
function kitpvp:map/fetch-map-info
function kitpvp:gamemode/fetch-gamemode-info

# Prepare players
execute as @a[tag=inMenu] run function kitpvp:interface/menus/main-menu/disable
execute as @a[tag=inMenu] run function kitpvp:loadouts/edit/edit/revoke-edit

tag @a[scores={ready=1}] add inGame

execute as @a[tag=inGame] run function kitpvp:loadouts/grant-items-selected

# Indicate gamemode has started
title @a title "Go!"
execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1
scoreboard players set gamemodeActive info 1

# Initialise common scoreboards
scoreboard objectives remove gm.kills
scoreboard objectives add gm.kills playerKillCount {"text": "Kills","color": "gold"}

scoreboard objectives remove gm.deaths
scoreboard objectives add gm.deaths deathCount {"text": "Deaths","color": "gold"}

scoreboard objectives remove gm.general
scoreboard objectives add gm.general dummy

scoreboard objectives remove gm.respawn-timer
scoreboard objectives add gm.respawn-timer dummy

scoreboard objectives remove gm.respawn-secs
scoreboard objectives add gm.respawn-secs dummy

scoreboard objectives remove gm.sidebar
scoreboard objectives add gm.sidebar dummy

# Run gamemode-specific initialisation commands
execute if score gamemode info matches 1 run function kitpvp:gamemode/01-deathmatch/init
execute if score gamemode info matches 2 run function kitpvp:gamemode/02-team-deathmatch/init

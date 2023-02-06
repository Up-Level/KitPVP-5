# In case this wasn't done earlier
function kitpvp:map/fetch-map-info
function kitpvp:gamemode/fetch-gamemode-info

# Prepare players
tag @a[scores={ready=1}] add inGame

scoreboard players set @a bin.dead 0

execute as @a[tag=inGame,scores={inMenu=1..}] run function kitpvp:interface/menus/main-menu/disable
execute as @a[tag=inGame] run function kitpvp:loadout/edit/edit/revoke-edit

clear @a[tag=inGame]
gamemode adventure @a[tag=inGame]
execute as @a[tag=inGame] run function kitpvp:generic/uuid/get-uuid

# Indicate gamemode has started
title @a[tag=inGame] title "Go!"
execute as @a[tag=inGame] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1
scoreboard players set gamemodeActive info 1

# Add tracker marker
execute as @a[tag=inGame] run function kitpvp:entity/player/custom/012-kit-tracker/create

# Initialise common scoreboards
scoreboard objectives remove gm.kills
scoreboard objectives add gm.kills playerKillCount {"text": "Kills","color": "gold"}

scoreboard objectives remove gm.deaths
scoreboard objectives add gm.deaths deathCount {"text": "Deaths","color": "gold"}

scoreboard objectives remove gm.general
scoreboard objectives add gm.general dummy

scoreboard objectives remove gm.y-location
scoreboard objectives add gm.y-location dummy

scoreboard objectives remove gm.respawn-timer
scoreboard objectives add gm.respawn-timer dummy

scoreboard objectives remove gm.respawn-secs
scoreboard objectives add gm.respawn-secs dummy

scoreboard objectives remove gm.rounds
scoreboard objectives add gm.rounds dummy

scoreboard objectives remove gm.rounds-copy
scoreboard objectives add gm.rounds-copy dummy

scoreboard objectives remove gm.sidebar
scoreboard objectives add gm.sidebar dummy

# Store round info on scoreboard
#declare score_holder totalRounds
#declare score_holder round

execute store result score totalRounds gm.general run data get storage current-gamemode Gamemode.Settings.Rounds
scoreboard players set round gm.general 0
execute store result score killY gm.general run data get storage current-map Map.KillY

# Assign players with a team if required and they haven't manually selected one
execute if data storage current-gamemode Gamemode.Teams as @a[tag=inGame,team=,sort=random] run function kitpvp:generic/assign-team

# Start music
scoreboard players set @a remainingLength -20

# Run gamemode-specific initialisation commands
execute if score gamemode info matches 0 run function kitpvp:gamemode/00-template/init
execute if score gamemode info matches 1 run function kitpvp:gamemode/01-deathmatch/init
execute if score gamemode info matches 2 run function kitpvp:gamemode/02-team-deathmatch/init
execute if score gamemode info matches 3 run function kitpvp:gamemode/03-lives/init

execute if score gamemode info matches 5 run function kitpvp:gamemode/05-infected/init
execute if score gamemode info matches 6 run function kitpvp:gamemode/06-ctf/init

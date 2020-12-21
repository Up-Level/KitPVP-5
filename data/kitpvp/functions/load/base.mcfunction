scoreboard objectives add config dummy

scoreboard objectives remove info
scoreboard objectives add info dummy
scoreboard players set gamemode info 0
scoreboard players set map info 0
scoreboard players set gamemodeSupported info 0
scoreboard players set gamemodeActive info 0
scoreboard players set playersReady info 0

scoreboard objectives remove temp
scoreboard objectives add temp dummy

scoreboard objectives remove ready
scoreboard objectives add ready dummy {"text":"Ready","color":"gold"}
scoreboard objectives setdisplay sidebar ready

scoreboard objectives remove itemData
scoreboard objectives add itemData dummy

scoreboard objectives setdisplay list wins

function kitpvp:load/teams-setup
function kitpvp:load/scoreboard-setup
function kitpvp:load/storage-setup

schedule function kitpvp:tick-per-sec 1s
schedule function kitpvp:tick-per-min 60s

tellraw @a {"text":"KitPVP Datapack Reloaded.","color":"gold"}
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1 1

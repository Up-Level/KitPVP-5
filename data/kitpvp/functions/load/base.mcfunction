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

scoreboard objectives remove readyDisplay
scoreboard objectives add readyDisplay dummy {"text":"Ready","color":"gold"}

function kitpvp:load/scoreboard-setup
function kitpvp:load/storage-setup

scoreboard objectives setdisplay sidebar readyDisplay
scoreboard objectives setdisplay list wins

scoreboard objectives remove itemData
scoreboard objectives add itemData dummy

schedule function kitpvp:tick-per-sec 1s
schedule function kitpvp:tick-per-min 60s

team remove none
team add none "No Team"
team modify none friendlyFire true
team modify none nametagVisibility never
team modify none seeFriendlyInvisibles false

tellraw @a {"text":"KitPVP Datapack Reloaded.","color":"gold"}

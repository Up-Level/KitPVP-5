scoreboard objectives remove config
scoreboard objectives add config dummy

scoreboard objectives remove info
scoreboard objectives add info dummy

scoreboard objectives remove readyDisplay
scoreboard objectives add readyDisplay dummy {"text":"Ready","color":"gold"}

function kitpvp:load/binary-scoreboards

scoreboard objectives remove itemData
scoreboard objectives add itemData dummy

schedule function kitpvp:tick-per-sec 1s
schedule function kitpvp:tick-per-min 60s

team remove none
team add none "No Team"
team modify none friendlyFire true
team modify none nametagVisibility always
team modify none seeFriendlyInvisibles false

tellraw @a {"text":"KitPVP Datapack Reloaded.","color":"gold"}

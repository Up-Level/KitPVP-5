# Clear the player
clear @s
effect clear @s
function kitpvp:loadouts/revoke-items

# Fancy effects
tellraw @a[tag=inGame] [{"selector":"@s","color":"red"},{"text":" has Died!","color":"red"}]
execute at @s run playsound entity.lightning_bolt.thunder player @a[tag=inGame] ~ ~ ~ 1 1 1

# Make them goto repsawn room and do respawn stuff
schedule function kitpvp:gamemode/private/start-respawn 1t replace

# THIS MAN IS ALIVE
scoreboard players set @s dead 0

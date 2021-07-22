# Clear the player
clear @s
effect clear @s
function kitpvp:loadout/revoke-items

# Reset killstreak
scoreboard players set @s gm.killstreak 0

# Fancy effects
tellraw @a[tag=inGame] [{"selector":"@s","color":"red"},{"text":" has Died!","color":"red"}]
execute at @s run playsound entity.lightning_bolt.thunder player @a[tag=inGame] ~ ~ ~ 1 1 1

# Make them goto respawn room and do respawn stuff
function kitpvp:gamemode/utility/death-solo/private/start-respawn

scoreboard players set @s bin.dead 0

# Clear the player
clear @s
effect clear @s
function kitpvp:effects/external/clear-all
function kitpvp:loadout/equip/revoke-items

advancement revoke @s only kitpvp:killed-by-player

# Reset killstreak
scoreboard players set @s gm.killstreak 0

# Fancy effects
tellraw @a[tag=inGame] [{"selector":"@s","color":"red"},{"text":" has Died!","color":"red"}]
execute at @s run playsound entity.lightning_bolt.thunder player @a[tag=inGame] ~ ~ ~ 1 1 1
execute as @a[scores={bin.kill=1..}] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1

# Make them goto respawn room and do respawn stuff
function kitpvp:gamemode/utility/death/private/start-respawn

scoreboard players set @s bin.deadGamemode 0

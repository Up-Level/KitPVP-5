# Can change death-related functions in gamemode tick to this function to "override" normal death mechanics
scoreboard players remove @s gm.lives 1

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
execute if entity @s[scores={gm.lives=1..}] run function kitpvp:gamemode/utility/death/private/start-respawn
execute if entity @s[scores={gm.lives=..0}] run function kitpvp:gamemode/03-lives/death/no-lives

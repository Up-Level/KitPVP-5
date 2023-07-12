# Can change death-related functions in gamemode tick to this function to "override" normal death mechanics

# Remove a kill from the player if they didn't die to another player (such as self-explosion or jumping off the map)
execute if entity @s[advancements={kitpvp:killed-by-player=false}] run scoreboard players remove @s gm.kills 1
advancement revoke @s only kitpvp:killed-by-player

execute as @a[scores={bin.kill=1..}] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1

execute if entity @s[tag=inGame,team=green] run function kitpvp:gamemode/05-infected/death/respawn-infected
execute if entity @s[tag=inGame,team=!green] run function kitpvp:gamemode/05-infected/death/set-infected

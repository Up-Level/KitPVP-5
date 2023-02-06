# Can change death-related functions in gamemode tick to this function to "override" normal death mechanics

execute as @a[scores={bin.kill=1..}] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1

execute if entity @s[tag=inGame,team=green] run function kitpvp:gamemode/05-infected/death/respawn-infected
execute if entity @s[tag=inGame,team=!green] run function kitpvp:gamemode/05-infected/death/set-infected

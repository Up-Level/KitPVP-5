# Can change death-related functions in gamemode tick to this function to "override" normal death mechanics

execute if entity @s[tag=inGame,team=green] run function kitpvp:gamemode/05-infected/death/respawn-infected
execute if entity @s[tag=inGame,team=!green] run function kitpvp:gamemode/05-infected/death/set-infected

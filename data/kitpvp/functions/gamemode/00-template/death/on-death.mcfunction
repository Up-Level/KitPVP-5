# Can change death-related functions in gamemode tick to this function to "override" normal death mechanics

# Remove a kill from the player if they didn't die to another player (such as self-explosion or jumping off the map)
execute if entity @s[advancements={kitpvp:killed-by-player=false}] run scoreboard players remove @s gm.kills 1

function kitpvp:gamemode/utility/death/on-death
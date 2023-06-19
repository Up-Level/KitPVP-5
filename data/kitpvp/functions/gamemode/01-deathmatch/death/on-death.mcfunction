# Can change death-related functions in gamemode tick to this function to "override" normal death mechanics

execute if entity @s[advancements={kitpvp:killed-by-player=false}] run scoreboard players remove @s gm.sidebar 1

function kitpvp:gamemode/utility/death/on-death

# Can change death-related functions in gamemode tick to this function to "override" normal death mechanics

# Remove a kill from the player's team if they didn't die to another player (such as self-explosion or jumping off the map)
execute if entity @s[team=red,advancements={kitpvp:killed-by-player=false}] run scoreboard players remove Red gm.general 1
execute if entity @s[team=blue,advancements={kitpvp:killed-by-player=false}] run scoreboard players remove Blue gm.general 1
execute if entity @s[team=green,advancements={kitpvp:killed-by-player=false}] run scoreboard players remove Green gm.general 1
execute if entity @s[team=yellow,advancements={kitpvp:killed-by-player=false}] run scoreboard players remove Yellow gm.general 1

function kitpvp:gamemode/utility/death/on-death

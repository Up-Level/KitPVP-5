#> kitpvp:generic/assign-team
# @context player
# Assigns @s to a team if they haven't already selected one.

# Get number of players currently on a team
execute store result score redPlayers temp if entity @e[team=red,tag=inGame]
execute store result score bluePlayers temp if entity @e[team=blue,tag=inGame]
execute store result score greenPlayers temp if entity @e[team=green,tag=inGame]
execute store result score yellowPlayers temp if entity @e[team=yellow,tag=inGame]

# Find which team has the least players
scoreboard players set lowestTeamCount temp 2147483647
execute if score redPlayers temp matches 1.. run scoreboard players operation lowestTeamCount temp < redPlayers temp
execute if score bluePlayers temp matches 1.. run scoreboard players operation lowestTeamCount temp < bluePlayers temp
execute if score greenPlayers temp matches 1.. run scoreboard players operation lowestTeamCount temp < greenPlayers temp
execute if score yellowPlayers temp matches 1.. run scoreboard players operation lowestTeamCount temp < yellowPlayers temp

# The team with least players will be the one which now has a count of 0
scoreboard players operation redPlayers temp -= lowestTeamCount temp
scoreboard players operation bluePlayers temp -= lowestTeamCount temp
scoreboard players operation greenPlayers temp -= lowestTeamCount temp
scoreboard players operation yellowPlayers temp -= lowestTeamCount temp

scoreboard players set teamChoice temp 0

# If all teams have the same amount of players, join red
execute if score teamChoice temp matches 0 if score redPlayers temp matches 1.. if score bluePlayers temp matches 1.. if score greenPlayers temp matches 1.. if score yellowPlayers temp matches 1.. run scoreboard players set teamChoice temp 1

# If all teams have no players, join red
execute if score teamChoice temp matches 0 if score redPlayers temp matches ..-1 if score bluePlayers temp matches ..-1 if score greenPlayers temp matches ..-1 if score yellowPlayers temp matches ..-1 run scoreboard players set teamChoice temp 1

# If only red has players, join blue
execute if score teamChoice temp matches 0 if score redPlayers temp matches 0 if score bluePlayers temp matches ..-1 if score greenPlayers temp matches ..-1 if score yellowPlayers temp matches ..-1 run scoreboard players set teamChoice temp 2

# If only other teams have none, join red
execute if score teamChoice temp matches 0 if score redPlayers temp matches ..-1 if score bluePlayers temp matches 0 if score greenPlayers temp matches ..-1 if score yellowPlayers temp matches ..-1 run scoreboard players set teamChoice temp 1
execute if score teamChoice temp matches 0 if score redPlayers temp matches ..-1 if score bluePlayers temp matches ..-1 if score greenPlayers temp matches 0 if score yellowPlayers temp matches ..-1 run scoreboard players set teamChoice temp 1
execute if score teamChoice temp matches 0 if score redPlayers temp matches ..-1 if score bluePlayers temp matches ..-1 if score greenPlayers temp matches ..-1 if score yellowPlayers temp matches 0 run scoreboard players set teamChoice temp 1

# Set team to the one with the least players
execute if score teamChoice temp matches 0 if score redPlayers temp matches 0 run scoreboard players set teamChoice temp 1
execute if score teamChoice temp matches 0 if score bluePlayers temp matches 0 run scoreboard players set teamChoice temp 2
execute if score teamChoice temp matches 0 if score greenPlayers temp matches 0 run scoreboard players set teamChoice temp 3
execute if score teamChoice temp matches 0 if score yellowPlayers temp matches 0 run scoreboard players set teamChoice temp 4

# Set Teams
execute if score teamChoice temp matches 1 run team join red @s
execute if score teamChoice temp matches 2 run team join blue @s
execute if score teamChoice temp matches 3 run team join green @s
execute if score teamChoice temp matches 4 run team join yellow @s

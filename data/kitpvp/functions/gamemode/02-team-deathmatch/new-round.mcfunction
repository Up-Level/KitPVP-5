# Run utility functions
function kitpvp:gamemode/utility/timer/init

# Add points to everyone who won
execute if score red gm.kills-copy matches 0 run scoreboard players add red gm.rounds 1
execute if score blue gm.kills-copy matches 0 run scoreboard players add blue gm.rounds 1
execute if score green gm.kills-copy matches 0 run scoreboard players add green gm.rounds 1
execute if score yellow gm.kills-copy matches 0 run scoreboard players add yellow gm.rounds 1

execute as @a[tag=inGame] run function kitpvp:loadout/revoke-items

scoreboard players set @a[tag=inGame] gm.kills 0
scoreboard players set Red gm.sidebar 0
scoreboard players set Blue gm.sidebar 0
scoreboard players set Green gm.sidebar 0
scoreboard players set Yellow gm.sidebar 0

# Calculate who has won the most rounds so far
scoreboard players operation red gm.rounds-copy = red gm.rounds
scoreboard players operation blue gm.rounds-copy = blue gm.rounds
scoreboard players operation green gm.rounds-copy = green gm.rounds
scoreboard players operation yellow gm.rounds-copy = yellow gm.rounds

scoreboard players set highest gm.rounds-copy 0
scoreboard players operation highest gm.rounds-copy > red gm.rounds-copy
scoreboard players operation highest gm.rounds-copy > blue gm.rounds-copy
scoreboard players operation highest gm.rounds-copy > green gm.rounds-copy
scoreboard players operation highest gm.rounds-copy > yellow gm.rounds-copy

scoreboard players operation red gm.rounds-copy -= highest gm.rounds-copy
scoreboard players operation blue gm.rounds-copy -= highest gm.rounds-copy
scoreboard players operation green gm.rounds-copy -= highest gm.rounds-copy
scoreboard players operation yellow gm.rounds-copy -= highest gm.rounds-copy

execute if score red gm.rounds-copy matches 0 run data merge storage winning-team {Winner:"{\"text\":\"Red Team\",\"color\":\"red\"}"}
execute if score blue gm.rounds-copy matches 0 run data merge storage winning-team {Winner:"{\"text\":\"Blue Team\",\"color\":\"blue\"}"}
execute if score green gm.rounds-copy matches 0 run data merge storage winning-team {Winner:"{\"text\":\"Green Team\",\"color\":\"green\"}"}
execute if score yellow gm.rounds-copy matches 0 run data merge storage winning-team {Winner:"{\"text\":\"Yellow Team\",\"color\":\"yellow\"}"}

# Display info saying who is currently winning.
execute if score totalRounds gm.general matches 2.. if score round gm.general matches 1.. as @a[tag=inGame,team=red] run tellraw @s [{"text":"Your team has won ","color":"gold"}, {"score":{"name": "red","objective": "gm.rounds"}}, " round(s).\nCurrently in the lead: ", {"nbt":"Winner","storage":"winning-team","interpret":true}, " with ", {"score":{"name": "highest","objective": "gm.rounds-copy"}}, " rounds won."]
execute if score totalRounds gm.general matches 2.. if score round gm.general matches 1.. as @a[tag=inGame,team=blue] run tellraw @s [{"text":"Your team has won ","color":"gold"}, {"score":{"name": "blue","objective": "gm.rounds"}}, " round(s).\nCurrently in the lead: ", {"nbt":"Winner","storage":"winning-team","interpret":true}, " with ", {"score":{"name": "highest","objective": "gm.rounds-copy"}}, " rounds won."]
execute if score totalRounds gm.general matches 2.. if score round gm.general matches 1.. as @a[tag=inGame,team=green] run tellraw @s [{"text":"Your team has won ","color":"gold"}, {"score":{"name": "green","objective": "gm.rounds"}}, " round(s).\nCurrently in the lead: ", {"nbt":"Winner","storage":"winning-team","interpret":true}, " with ", {"score":{"name": "highest","objective": "gm.rounds-copy"}}, " rounds won."]
execute if score totalRounds gm.general matches 2.. if score round gm.general matches 1.. as @a[tag=inGame,team=yellow] run tellraw @s [{"text":"Your team has won ","color":"gold"}, {"score":{"name": "yellow","objective": "gm.rounds"}}, " round(s).\nCurrently in the lead: ", {"nbt":"Winner","storage":"winning-team","interpret":true}, " with ", {"score":{"name": "highest","objective": "gm.rounds-copy"}}, " rounds won."]

# End game if maximum rounds reached
execute if score round gm.general = totalRounds gm.general run function kitpvp:gamemode/02-team-deathmatch/end
# End game if not enough players
execute if score playersInGame gm.general matches ..1 run function kitpvp:gamemode/02-team-deathmatch/end

# Send players to respawn room
execute if score round gm.general < totalRounds gm.general if score round gm.general matches 1.. as @a[tag=inGame] run function kitpvp:gamemode/utility/death/private/start-respawn
execute if score round gm.general < totalRounds gm.general if score round gm.general matches 0 as @a[tag=inGame] run function kitpvp:gamemode/02-team-deathmatch/spawn

# Increase round number
scoreboard players operation round gm.general += #1 mathf.const

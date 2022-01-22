# Give round win to team with most captures
execute if score red gm.captures-copy matches 0 run scoreboard players add red gm.rounds 1
execute if score blue gm.captures-copy matches 0 run scoreboard players add blue gm.rounds 1
execute if score green gm.captures-copy matches 0 run scoreboard players add green gm.rounds 1
execute if score yellow gm.captures-copy matches 0 run scoreboard players add yellow gm.rounds 1

# Find who is winning the most rounds
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

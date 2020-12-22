scoreboard players operation 0.0 uuid -= 1.0 uuid
scoreboard players operation 0.1 uuid -= 1.1 uuid
scoreboard players operation 0.2 uuid -= 1.2 uuid
scoreboard players operation 0.3 uuid -= 1.3 uuid

scoreboard players set out.0 uuid 0
execute if score 0.0 uuid matches 0 if score 0.1 uuid matches 0 if score 0.2 uuid matches 0 if score 0.3 uuid matches 0 run scoreboard players set out.0 uuid 1

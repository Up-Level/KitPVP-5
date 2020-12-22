scoreboard players operation 0.0 uuid -= 1.0 uuid
scoreboard players operation 0.1 uuid -= 1.1 uuid
scoreboard players operation 0.2 uuid -= 1.2 uuid
scoreboard players operation 0.3 uuid -= 1.3 uuid

scoreboard players set out.0 uuid 0
execute if score 0.0 uuid = 1.0 uuid if score 0.1 uuid = 1.1 uuid if score 0.2 uuid = 1.2 uuid if score 0.3 uuid = 1.3 uuid run scoreboard players set out.0 uuid 1

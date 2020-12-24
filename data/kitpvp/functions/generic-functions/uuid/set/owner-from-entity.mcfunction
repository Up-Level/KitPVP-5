data modify entity @s Owner set from entity @e[tag=uuid0,limit=1] UUID

scoreboard players operation @s uuid.owner0 = @e[tag=uuid0,limit=1] uuid.entity0
scoreboard players operation @s uuid.owner1 = @e[tag=uuid0,limit=1] uuid.entity1
scoreboard players operation @s uuid.owner2 = @e[tag=uuid0,limit=1] uuid.entity2
scoreboard players operation @s uuid.owner3 = @e[tag=uuid0,limit=1] uuid.entity3

tag @e remove uuid0

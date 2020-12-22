execute as @e[tag=uuid0,limit=1] run function kitpvp:generic-functions/uuid/get-owner-uuid
execute as @e[tag=uuid0,limit=1] run scoreboard players operation 0.0 uuid = @s uuid.owner0
execute as @e[tag=uuid0,limit=1] run scoreboard players operation 0.1 uuid = @s uuid.owner1
execute as @e[tag=uuid0,limit=1] run scoreboard players operation 0.2 uuid = @s uuid.owner2
execute as @e[tag=uuid0,limit=1] run scoreboard players operation 0.3 uuid = @s uuid.owner3

execute as @e[tag=uuid1,limit=1] run function kitpvp:generic-functions/uuid/get-uuid
execute as @e[tag=uuid1,limit=1] run scoreboard players operation 1.0 uuid = @s uuid.entity0
execute as @e[tag=uuid1,limit=1] run scoreboard players operation 1.1 uuid = @s uuid.entity1
execute as @e[tag=uuid1,limit=1] run scoreboard players operation 1.2 uuid = @s uuid.entity2
execute as @e[tag=uuid1,limit=1] run scoreboard players operation 1.3 uuid = @s uuid.entity3

function kitpvp:generic-functions/uuid/check/uuid-match

tag @e remove uuid0
tag @e remove uuid1

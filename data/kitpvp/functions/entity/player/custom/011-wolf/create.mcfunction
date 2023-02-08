summon wolf ~ ~ ~ {Tags:["temp","playerEntity"],PersistenceRequired:1b}


scoreboard players set @e[tag=temp] entity.type 11
scoreboard players set @e[tag=temp] entity.state 0
scoreboard players set @e[tag=temp] entity.data 0
scoreboard players set @e[tag=temp] entity.time 0

tag @s add uuid0
execute as @e[tag=temp] run function kitpvp:generic/uuid/set/owner-from-entity

tag @e remove temp

summon wolf ~ ~ ~ {Tags:["temp","playerEntity"],PersistenceRequired:1b}

scoreboard players set @e[limit=1,tag=temp] entity.type 11
scoreboard players set @e[limit=1,tag=temp] entity.state 0
scoreboard players set @e[limit=1,tag=temp] entity.data 0
scoreboard players set @e[limit=1,tag=temp] entity.time 0

execute if entity @s[team=red] run team join red @e[limit=1,tag=temp]
execute if entity @s[team=green] run team join green @e[limit=1,tag=temp]
execute if entity @s[team=blue] run team join blue @e[limit=1,tag=temp]
execute if entity @s[team=yellow] run team join yellow @e[limit=1,tag=temp]

tag @s add uuid0
execute as @e[tag=temp] run function kitpvp:generic/uuid/set/owner-from-entity

tag @e remove temp

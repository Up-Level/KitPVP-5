summon horse ~ ~ ~ {Tags:["temp","playerEntity","entity.presistDeath","entity.rideable"],PersistenceRequired:1b,Tame:1,SaddleItem:{id:"minecraft:saddle",Count:1,tag:{Tags:["Delete"]}},Attributes:[{Name:"horse.jump_strength",Base:1},{Name:"generic.movement_speed",Base:0.20},{Name:"generic.max_health",Base:16}]}

scoreboard players set @e[tag=temp] entity.type 7
scoreboard players set @e[tag=temp] entity.state 0
scoreboard players set @e[tag=temp] entity.data 0
scoreboard players set @e[tag=temp] entity.time 0

execute if entity @s[team=red] run team join red @e[limit=1,tag=temp]
execute if entity @s[team=green] run team join green @e[limit=1,tag=temp]
execute if entity @s[team=blue] run team join blue @e[limit=1,tag=temp]
execute if entity @s[team=yellow] run team join yellow @e[limit=1,tag=temp]

tag @s add uuid0
execute as @e[tag=temp] run function kitpvp:generic/uuid/set/owner-from-entity

tag @e remove temp

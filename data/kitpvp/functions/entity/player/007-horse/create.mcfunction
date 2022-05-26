summon horse ~ ~ ~ {Tags:["temp","playerEntity"],Tame:1,SaddleItem:{id:"minecraft:saddle",Count:1,tag:{Tags:["Delete"]}},Attributes:[{Name:"horse.jump_strength",Base:1},{Name:"generic.movement_speed",Base:0.20},{Name:"generic.max_health",Base:16}]}


scoreboard players set @e[tag=temp] entity.type 7
scoreboard players set @e[tag=temp] entity.state 0
scoreboard players set @e[tag=temp] entity.data 0
scoreboard players set @e[tag=temp] entity.time 0

tag @s add uuid0
execute as @e[tag=temp] run function kitpvp:generic/uuid/set/owner-from-entity

tag @e remove temp

summon warden ~ ~ ~ {Tags:["temp","playerEntity","entity.persistRound"],PersistenceRequired:1b,Brain: {memories: {"minecraft:dig_cooldown":{value: {}, ttl: 40L}, "minecraft:is_emerging": {value: {}, ttl: 85L}}}}

scoreboard players set @e[tag=temp] entity.type 13
scoreboard players set @e[tag=temp] entity.state 0

scoreboard players set @e[tag=temp] entity.data1 0
scoreboard players set @e[tag=temp] entity.data2 0
scoreboard players set @e[tag=temp] entity.data3 0
scoreboard players set @e[tag=temp] entity.data4 0

scoreboard players set @e[tag=temp] entity.time 550

tag @s add uuid0
execute as @e[tag=temp] run function kitpvp:generic/uuid/set/owner-from-entity

tag @e remove temp

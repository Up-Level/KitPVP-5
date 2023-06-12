summon firework_rocket ^ ^ ^ {Tags:["temp", "playerEntity","entity.presistRound"],Silent:1b,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;11743532],FadeColors:[I;15435844]}]}}}}

scoreboard players set @e[tag=temp] entity.type 4
scoreboard players set @e[tag=temp] entity.state 0
scoreboard players set @e[tag=temp] entity.data 0
scoreboard players set @e[tag=temp] entity.time 0

tag @s add uuid0
execute as @e[tag=temp] run function kitpvp:generic/uuid/set/owner-from-entity

tag @e remove temp

#/summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:stone,Count:1b}]}

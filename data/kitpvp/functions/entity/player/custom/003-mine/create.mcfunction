summon minecraft:armor_stand ^ ^-0.675 ^ {Tags:["temp","playerEntity","entity.presistDeath"], Marker:1b, Invisible:1, NoGravity:1b, ArmorItems:[{},{},{},{id:"smooth_stone_slab",Count:1b}],Small:1b}

playsound minecraft:block.stem.place player @a

scoreboard players set @e[tag=temp] entity.type 3
scoreboard players set @e[tag=temp] entity.state 0
scoreboard players set @e[tag=temp] entity.data 0
scoreboard players set @e[tag=temp] entity.time 80

tag @s add uuid0
execute as @e[tag=temp] run function kitpvp:generic/uuid/set/owner-from-entity

tag @e remove temp

#/summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:stone,Count:1b}]}

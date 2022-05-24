function kitpvp:entity/player/get-owner-this

particle minecraft:dust_color_transition 0 1 .75 1 1 1 1 ~ ~1 ~ .25 .1 .25 1 1 force @a[tag=found] 

execute if score @s entity.state matches 0 run scoreboard players remove @s entity.time 1

execute if score @s entity.state matches 0 if score @s entity.time matches ..0 run scoreboard players set @s entity.state 1

execute if score @s entity.state matches 1 run particle minecraft:small_flame ~ ~1 ~ 0 0 0 0 1 force

execute if score @s entity.state matches 1 as @e[tag=found] run function kitpvp:generic/info/get-enemy

execute if score @s entity.state matches 1 positioned ~ ~1 ~ if entity @e[tag=found.enemy,distance=..2] run function kitpvp:entity/player/003-mine/explode

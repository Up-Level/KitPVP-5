function kitpvp:entity/player/internal/get-owner-this

execute if entity @e[limit=1,tag=found,team=red] run particle minecraft:dust_color_transition 1 0 0 1 .75 0.25 0.25 ~ ~1 ~ .25 .1 .25 1 1 force @a[team=red] 
execute if entity @e[limit=1,tag=found,team=green] run particle minecraft:dust_color_transition 0 1 0 1 .25 0.75 0.25 ~ ~1 ~ .25 .1 .25 1 1 force @a[team=green] 
execute if entity @e[limit=1,tag=found,team=blue] run particle minecraft:dust_color_transition 0 0 1 1 .25 0.25 0.75 ~ ~1 ~ .25 .1 .25 1 1 force @a[team=blue] 
execute if entity @e[limit=1,tag=found,team=yellow] run particle minecraft:dust_color_transition 1 1 0 1 .75 0.75 0.25 ~ ~1 ~ .25 .1 .25 1 1 force @a[team=yellow] 

execute if entity @e[limit=1,tag=found,team=none] run particle minecraft:dust_color_transition 0 1 .75 1 1 1 1 ~ ~1 ~ .25 .1 .25 1 1 force @a[limit=1,tag=found] 
execute if entity @e[limit=1,tag=found,team=] run particle minecraft:dust_color_transition 0 1 .75 1 1 1 1 ~ ~1 ~ .25 .1 .25 1 1 force @a[limit=1,tag=found] 

execute if score @s entity.state matches 0 run scoreboard players remove @s entity.time 1

execute if score @s entity.state matches 0 if score @s entity.time matches ..0 at @s positioned ~ ~1 ~ run playsound minecraft:block.note_block.bit player @a
execute if score @s entity.state matches 0 if score @s entity.time matches ..0 run scoreboard players set @s entity.state 1

execute if score @s entity.state matches 1 run particle minecraft:small_flame ~ ~1 ~ 0 0 0 0 1 force

execute if score @s entity.state matches 1 as @e[limit=1,tag=found] run function kitpvp:generic/info/get-enemy

execute if score @s entity.state matches 1 positioned ~ ~1 ~ if entity @e[tag=found.enemy,distance=..2] run function kitpvp:entity/player/custom/003-mine/explode

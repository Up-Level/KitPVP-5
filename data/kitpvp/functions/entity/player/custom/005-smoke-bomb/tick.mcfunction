scoreboard players remove @s entity.time 1


execute if score @s entity.state matches 0 run particle minecraft:dust_color_transition 1 1 1 2 0 0 0 ~ ~ ~ 0 0 0 0 1 force

execute if score @s entity.state matches 1 run particle minecraft:dust 1 1 1 10 ~ ~.5 ~ 2 1 2 10 25 force
execute if score @s entity.state matches 1 positioned ~-3 ~-1 ~-3 run effect give @a[dz=6,dy=3,dx=6] minecraft:blindness 2 0 false

# execute if score @s entity.state matches 1 positioned ~ ~0.675 ~ as @e[type=minecraft:player,distance=..1] run effect give @s minecraft:blindness 5 0

execute if score @s entity.state matches 0 if entity @s[nbt={OnGround:1b}] at @s run playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 1 .5
execute if score @s entity.state matches 0 if entity @s[nbt={OnGround:1b}] run scoreboard players set @s entity.time 200
execute if score @s entity.state matches 0 if entity @s[nbt={OnGround:1b}] run scoreboard players set @s entity.state 1

execute if score @s entity.state matches 1 run data modify entity @s Motion set value [0d, 0d, 0d]
execute if score @s entity.state matches 1 if score @s entity.time matches ..0 run function kitpvp:entity/player/internal/destroy

execute if score @s entity.time matches ..0 at @s run playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 1 .5
execute if score @s entity.time matches ..0 run scoreboard players set @s entity.state 1
execute if score @s entity.time matches ..0 run scoreboard players set @s entity.time 200

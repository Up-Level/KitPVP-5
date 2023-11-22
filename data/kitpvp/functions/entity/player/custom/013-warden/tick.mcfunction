execute unless score @s entity.time matches ..0 run scoreboard players remove @s entity.time 1

#execute if score @s entity.time matches 0 run particle minecraft:dust_color_transition .02 .24 .34 2 0.25 0.25 0.25 ~ ~1.6 ~ .75 .85 .75 0 250 normal
#execute if score @s entity.time matches 0 run function kitpvp:entity/player/internal/destroy

execute if score @s entity.time matches 0 run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
execute if score @s entity.time matches 0 run data modify entity @s PersistenceRequired set value 0b
execute if score @s entity.time matches 0 run data modify entity @s anger set value {suspects:[]}
execute if score @s entity.time matches 0 run data modify entity @s Brain.memories set value {"minecraft:dig_cooldown":{value:{},ttl: 0L}}
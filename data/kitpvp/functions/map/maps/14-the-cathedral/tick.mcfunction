execute as @a[scores={gm.teleport-cooldown=1..}] run scoreboard players remove @s gm.teleport-cooldown 1

execute positioned 40 28 -20 as @a[distance=..0.75,scores={gm.teleport-cooldown=0}] at @s if predicate utilities:is_sneaking run function kitpvp:map/maps/14-the-cathedral/private/east-tp
execute positioned -37 29 39 as @a[distance=..0.75,scores={gm.teleport-cooldown=0}] at @s if predicate utilities:is_sneaking run function kitpvp:map/maps/14-the-cathedral/private/west-tp

execute as @a[scores={gm.teleport-cooldown=20}] at @s run playsound entity.enderman.teleport player @a ~ ~ ~ 3
execute as @a[scores={gm.teleport-cooldown=20}] at @s run playsound ambient.cave player @s

execute if entity @a[scores={gm.teleport-cooldown=20}] run particle minecraft:crimson_spore 40 28 -20 0.1 1 0.1 1 100 force
execute if entity @a[scores={gm.teleport-cooldown=20}] run particle minecraft:crimson_spore -37 29 39 0.1 1 0.1 1 100 force

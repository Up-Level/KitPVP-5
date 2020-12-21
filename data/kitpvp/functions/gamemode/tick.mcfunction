execute as @a[tag=inGame,tag=!respawning,gamemode=adventure] run item entity @s hotbar.8 replace minecraft:golden_carrot

execute as @a[tag=inGame,scores={dead=1}] run function kitpvp:gamemode/on-death
execute as @a[tag=respawning] run function kitpvp:gamemode/respawn

execute store result score playersInGame gm.general if entity @a[tag=inGame]

execute if score gamemode info matches 1 run function kitpvp:gamemode/01-deathmatch/tick

# caroot
execute as @a[tag=inGame,tag=!respawning,gamemode=adventure] run item entity @s hotbar.8 replace minecraft:golden_carrot

# If are found dead, run on-death
execute as @a[tag=inGame,scores={bin.dead=1},nbt={Health:20f}] run function kitpvp:gamemode/on-death
# Tick for respawn
execute as @a[tag=respawning] run function kitpvp:gamemode/private/tick-respawn

# Get amount of players in game
execute store result score playersInGame gm.general if entity @a[tag=inGame]

execute if score gamemode info matches 1 run function kitpvp:gamemode/01-deathmatch/tick
execute if score gamemode info matches 2 run function kitpvp:gamemode/02-team-deathmatch/tick

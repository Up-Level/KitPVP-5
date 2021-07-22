# Get amount of players in game
execute store result score playersInGame gm.general if entity @a[tag=inGame]

execute if score gamemode info matches 0 run function kitpvp:gamemode/00-template/tick
execute if score gamemode info matches 1 run function kitpvp:gamemode/01-deathmatch/tick
execute if score gamemode info matches 2 run function kitpvp:gamemode/02-team-deathmatch/tick

# Get amount of players in game
execute store result score playersInGame gm.general if entity @a[tag=inGame]

execute as @a[scores={musicCategory=1..}] run function kitpvp:generic/music/player-tick

execute as @a[tag=inGame,tag=!respawning] store result score @s gm.y-location run data get entity @s Pos[1]
execute as @a[tag=inGame,tag=!respawning] if score @s gm.y-location <= killY gm.general run function kitpvp:gamemode/utility/death/environmental-death

execute if score gamemode info matches 0 run function kitpvp:gamemode/00-template/tick
execute if score gamemode info matches 1 run function kitpvp:gamemode/01-deathmatch/tick
execute if score gamemode info matches 2 run function kitpvp:gamemode/02-team-deathmatch/tick
execute if score gamemode info matches 3 run function kitpvp:gamemode/03-lives/tick

execute if score gamemode info matches 5 run function kitpvp:gamemode/05-infected/tick
execute if score gamemode info matches 6 run function kitpvp:gamemode/06-ctf/tick

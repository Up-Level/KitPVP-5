advancement revoke @s only kitpvp:killed-by-player

execute if score gamemode info matches 0 run function kitpvp:gamemode/00-template/spawn
execute if score gamemode info matches 1 run function kitpvp:gamemode/01-deathmatch/spawn
execute if score gamemode info matches 2 run function kitpvp:gamemode/02-team-deathmatch/spawn
execute if score gamemode info matches 3 run function kitpvp:gamemode/03-lives/spawn

execute if score gamemode info matches 5 run function kitpvp:gamemode/05-infected/spawn
execute if score gamemode info matches 6 run function kitpvp:gamemode/06-ctf/spawn

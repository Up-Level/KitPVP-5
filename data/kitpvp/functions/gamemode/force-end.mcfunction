# To automatically end a gamemode on reload

execute if score gamemode info matches 1 run function kitpvp:gamemode/01-deathmatch/end
execute if score gamemode info matches 2 run function kitpvp:gamemode/02-team-deathmatch/end
execute if score gamemode info matches 3 run function kitpvp:gamemode/03-lives/end

execute if score gamemode info matches 5 run function kitpvp:gamemode/05-infected/end

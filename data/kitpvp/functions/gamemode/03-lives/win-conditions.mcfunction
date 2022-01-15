# Start a new round if win condition is met
execute store result score playersAlive gm.general if entity @a[tag=inGame,scores={gm.lives=1..}]

execute if score playersAlive gm.general matches ..1 run function kitpvp:gamemode/03-lives/new-round
execute if score playersInGame gm.general matches ..1 run function kitpvp:gamemode/03-lives/new-round

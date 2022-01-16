# Start a new round if win condition is met
execute if score ticksRemaining gm.general matches ..0 run function kitpvp:gamemode/05-infected/new-round
execute if score Humans gm.sidebar matches 0 run function kitpvp:gamemode/05-infected/new-round
execute if score playersInGame gm.general matches 1 run function kitpvp:gamemode/05-infected/new-round

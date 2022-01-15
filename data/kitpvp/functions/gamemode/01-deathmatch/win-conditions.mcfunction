# Start a new round if win condition is met
execute if score ticksRemaining gm.general matches ..0 if score playersInLead gm.general matches 1 run function kitpvp:gamemode/01-deathmatch/new-round
execute if score playersInGame gm.general matches 1 run function kitpvp:gamemode/01-deathmatch/new-round

# Start a new round if win condition is met
execute if score Red gm.sidebar = maxCaptures gm.general run function kitpvp:gamemode/06-ctf/new-round
execute if score Blue gm.sidebar = maxCaptures gm.general run function kitpvp:gamemode/06-ctf/new-round
execute if score Green gm.sidebar = maxCaptures gm.general run function kitpvp:gamemode/06-ctf/new-round
execute if score Yellow gm.sidebar = maxCaptures gm.general run function kitpvp:gamemode/06-ctf/new-round

execute if score ticksRemaining gm.general matches ..0 run function kitpvp:gamemode/06-ctf/new-round
execute if score playersInGame gm.general matches 1 run function kitpvp:gamemode/06-ctf/new-round

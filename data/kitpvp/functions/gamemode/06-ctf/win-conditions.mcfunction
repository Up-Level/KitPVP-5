# Start a new round if win condition is met

# End game if maxCaptures is reached
execute if score Red gm.sidebar = maxCaptures gm.general run function kitpvp:gamemode/06-ctf/new-round
execute if score Blue gm.sidebar = maxCaptures gm.general run function kitpvp:gamemode/06-ctf/new-round
execute if score Green gm.sidebar = maxCaptures gm.general run function kitpvp:gamemode/06-ctf/new-round
execute if score Yellow gm.sidebar = maxCaptures gm.general run function kitpvp:gamemode/06-ctf/new-round

# End game if time ran out and one person in the lead
scoreboard players operation red gm.captures-copy = Red gm.sidebar
scoreboard players operation blue gm.captures-copy = Blue gm.sidebar
scoreboard players operation green gm.captures-copy = Green gm.sidebar
scoreboard players operation yellow gm.captures-copy = Yellow gm.sidebar

scoreboard players set highest gm.captures-copy 0
scoreboard players operation highest gm.captures-copy > red gm.captures-copy
scoreboard players operation highest gm.captures-copy > blue gm.captures-copy
scoreboard players operation highest gm.captures-copy > green gm.captures-copy
scoreboard players operation highest gm.captures-copy > yellow gm.captures-copy

scoreboard players operation red gm.captures-copy -= highest gm.captures-copy
scoreboard players operation blue gm.captures-copy -= highest gm.captures-copy
scoreboard players operation green gm.captures-copy -= highest gm.captures-copy
scoreboard players operation yellow gm.captures-copy -= highest gm.captures-copy

execute if score ticksRemaining gm.general matches ..0 if score red gm.captures-copy matches 0 if score blue gm.captures-copy matches ..-1 if score green gm.captures-copy matches ..-1 if score yellow gm.captures-copy matches ..-1 run function kitpvp:gamemode/06-ctf/new-round

execute if score ticksRemaining gm.general matches ..0 if score blue gm.captures-copy matches 0 if score red gm.captures-copy matches ..-1 if score green gm.captures-copy matches ..-1 if score yellow gm.captures-copy matches ..-1 run function kitpvp:gamemode/06-ctf/new-round

execute if score ticksRemaining gm.general matches ..0 if score green gm.captures-copy matches 0 if score blue gm.captures-copy matches ..-1 if score red gm.captures-copy matches ..-1 if score yellow gm.captures-copy matches ..-1 run function kitpvp:gamemode/06-ctf/new-round

execute if score ticksRemaining gm.general matches ..0 if score yellow gm.captures-copy matches 0 if score blue gm.captures-copy matches ..-1 if score green gm.captures-copy matches ..-1 if score red gm.captures-copy matches ..-1 run function kitpvp:gamemode/06-ctf/new-round

execute if score playersInGame gm.general matches 1 run function kitpvp:gamemode/06-ctf/new-round

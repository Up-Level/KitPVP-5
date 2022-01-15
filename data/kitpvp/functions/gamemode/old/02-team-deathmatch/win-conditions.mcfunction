execute if score ticksRemaining gm.general matches ..0 if score red gm.kills-copy matches 0 if score blue gm.kills-copy matches ..-1 if score green gm.kills-copy matches ..-1 if score yellow gm.kills-copy matches ..-1 run function kitpvp:gamemode/02-team-deathmatch/end

execute if score ticksRemaining gm.general matches ..0 if score blue gm.kills-copy matches 0 if score red gm.kills-copy matches ..-1 if score green gm.kills-copy matches ..-1 if score yellow gm.kills-copy matches ..-1 run function kitpvp:gamemode/02-team-deathmatch/end

execute if score ticksRemaining gm.general matches ..0 if score green gm.kills-copy matches 0 if score blue gm.kills-copy matches ..-1 if score red gm.kills-copy matches ..-1 if score yellow gm.kills-copy matches ..-1 run function kitpvp:gamemode/02-team-deathmatch/end

execute if score ticksRemaining gm.general matches ..0 if score yellow gm.kills-copy matches 0 if score blue gm.kills-copy matches ..-1 if score green gm.kills-copy matches ..-1 if score red gm.kills-copy matches ..-1 run function kitpvp:gamemode/02-team-deathmatch/end

execute if score playersInGame gm.general matches 1 run function kitpvp:gamemode/02-team-deathmatch/end

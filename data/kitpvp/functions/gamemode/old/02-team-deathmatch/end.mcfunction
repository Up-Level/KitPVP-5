execute if score red gm.kills-copy matches 0 run tag @a[tag=inGame,team=red] add winner
execute if score blue gm.kills-copy matches 0 run tag @a[tag=inGame,team=blue] add winner
execute if score green gm.kills-copy matches 0 run tag @a[tag=inGame,team=green] add winner
execute if score yellow gm.kills-copy matches 0 run tag @a[tag=inGame,team=yellow] add winner

function kitpvp:gamemode/end

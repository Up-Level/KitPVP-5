# Tag all players that won with 'winner'
execute if score red gm.rounds-copy matches 0 run tag @a[tag=inGame,team=red] add winner
execute if score blue gm.rounds-copy matches 0 run tag @a[tag=inGame,team=blue] add winner
execute if score green gm.rounds-copy matches 0 run tag @a[tag=inGame,team=green] add winner
execute if score yellow gm.rounds-copy matches 0 run tag @a[tag=inGame,team=yellow] add winner

# Display winning tellraw message
execute if score red gm.rounds-copy matches 0 run tellraw @a[tag=inGame] [{"text":"Red Team","color": "red"}, {"text": " has won!","color": "gold"}]
execute if score blue gm.rounds-copy matches 0 run tellraw @a[tag=inGame] [{"text":"Blue Team","color": "blue"}, {"text": " has won!","color": "gold"}]
execute if score green gm.rounds-copy matches 0 run tellraw @a[tag=inGame] [{"text":"Green Team","color": "green"}, {"text": " has won!","color": "gold"}]
execute if score yellow gm.rounds-copy matches 0 run tellraw @a[tag=inGame] [{"text":"Yellow Team","color": "yellow"}, {"text": " has won!","color": "gold"}]

# Tell datapack to end the game
function kitpvp:gamemode/end

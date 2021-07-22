# Tag all players that won with 'winner'
tag @a[tag=inGame] add winner

# Display winning tellraw message
tellraw @a[tag=inGame] [{"text":"Winner(s): ","color": "gold"}, {"selector": "@a[tag=winner]"}]

# Tell datapack to end the game
function kitpvp:gamemode/end

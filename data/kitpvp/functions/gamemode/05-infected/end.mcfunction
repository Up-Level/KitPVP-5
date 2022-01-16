# Tag all players that won with 'winner'
tag @a[scores={gm.rounds-copy=0}] add winner

# Display winning tellraw message
tellraw @a[tag=inGame] [{"text":"Winner(s): ","color": "gold"}, {"selector": "@a[tag=winner]"}]

# Reenable team damage
team modify none friendlyFire true
team modify green friendlyFire true

tag @a remove firstInfected

# Tell datapack to end the game
function kitpvp:gamemode/end

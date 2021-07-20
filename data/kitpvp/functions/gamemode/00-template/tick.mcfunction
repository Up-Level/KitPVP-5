# Run utility functions
function kitpvp:gamemode/utility/timer/tick
function kitpvp:gamemode/utility/killstreak/tick

# Run death functions if a player dies
execute as @a[tag=inGame,scores={bin.dead=1},nbt={Health:20f}] run function kitpvp:gamemode/00-template/on-death

# Detect if the round should end
function kitpvp:gamemode/00-template/win-conditions
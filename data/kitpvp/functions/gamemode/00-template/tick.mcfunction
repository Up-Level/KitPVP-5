# Run utility functions
function kitpvp:gamemode/utility/timer/tick
function kitpvp:gamemode/utility/killstreak/tick

# Run death functions on death
execute as @a[tag=inGame,scores={bin.dead=1},nbt={Health:20f}] run function kitpvp:gamemode/utility/death-solo/on-death
# Tick for respawn
execute as @a[tag=respawning] run function kitpvp:gamemode/utility/death-solo/tick-respawn

# Detect if the round should end
function kitpvp:gamemode/00-template/win-conditions

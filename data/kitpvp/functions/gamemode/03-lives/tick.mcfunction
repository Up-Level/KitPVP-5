# Run utility functions
function kitpvp:gamemode/utility/killstreak/tick

gamemode spectator @a[tag=inGame,scores={gm.lives=..0}]

# Run death functions on death
execute as @a[tag=inGame,scores={bin.dead=1},nbt={Health:20f}] run function kitpvp:gamemode/03-lives/death/on-death
# Tick for respawn
execute as @a[tag=respawning] run function kitpvp:gamemode/utility/death-solo/tick-respawn

# Detect if the round should end
function kitpvp:gamemode/03-lives/win-conditions

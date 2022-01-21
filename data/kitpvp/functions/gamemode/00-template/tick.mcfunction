# Run utility functions
function kitpvp:gamemode/utility/timer/tick
function kitpvp:gamemode/utility/killstreak/tick

# Detect if running overtime
execute if score ticksRemaining gm.general matches ..-1 run function kitpvp:gamemode/00-template/overtime
execute if score ticksRemaining gm.general matches 0.. run bossbar set gm.bossbar name [{"text":"Time Remaining: ","color":"gold"},{"score":{"objective":"gm.general","name":"secondsRemaining"},"color":"gold"},{"text":" seconds","color":"gold"}]

# Run death functions on death
execute as @a[tag=inGame,scores={bin.dead=1},nbt={Health:20f}] run function kitpvp:gamemode/utility/death/on-death
# Tick for respawn
execute as @a[tag=respawning] run function kitpvp:gamemode/utility/death/tick-respawn

# Detect if the round should end
function kitpvp:gamemode/00-template/win-conditions

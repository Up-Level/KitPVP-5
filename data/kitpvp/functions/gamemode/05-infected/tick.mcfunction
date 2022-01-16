# Run utility functions
function kitpvp:gamemode/utility/timer/tick
function kitpvp:gamemode/utility/killstreak/tick

bossbar set gm.bossbar name [{"text":"Time Remaining: ","color":"gold"},{"score":{"objective":"gm.general","name":"secondsRemaining"},"color":"gold"},{"text":" seconds","color":"gold"}]
execute store result bossbar gm.bossbar value run scoreboard players get ticksRemaining gm.general

execute store result score Humans gm.sidebar if entity @a[tag=inGame,team=!green]
execute store result score Infected gm.sidebar if entity @a[tag=inGame,team=green]

execute if score ticksRemaining gm.general = firstInfection gm.general as @r[tag=inGame] run function kitpvp:gamemode/05-infected/first-infected

# Run death functions on death
execute as @a[tag=inGame,scores={bin.dead=1},nbt={Health:20f}] run function kitpvp:gamemode/05-infected/death/on-death
# Tick for respawn
execute as @a[tag=respawning] run function kitpvp:gamemode/utility/death-solo/tick-respawn

# Detect if the round should end
function kitpvp:gamemode/05-infected/win-conditions

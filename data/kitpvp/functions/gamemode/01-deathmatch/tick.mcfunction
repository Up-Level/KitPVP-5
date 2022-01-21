# Run utility functions
function kitpvp:gamemode/utility/timer/tick
function kitpvp:gamemode/utility/killstreak/tick

give @a[scores={bin.kill=1}] cooked_beef 3
 
execute store result bossbar gm.bossbar value run scoreboard players get ticksRemaining gm.general

# Detect if running overtime
execute if score ticksRemaining gm.general matches ..-1 run function kitpvp:gamemode/01-deathmatch/overtime

execute if score ticksRemaining gm.general matches 0.. run bossbar set gm.bossbar name [{"text":"Time Remaining: ","color":"gold"},{"score":{"objective":"gm.general","name":"secondsRemaining"},"color":"gold"},{"text":" seconds","color":"gold"}]

# Run death functions on death
execute as @a[tag=inGame,scores={bin.dead=1},nbt={Health:20f}] run function kitpvp:gamemode/utility/death/on-death
# Tick for respawn
execute as @a[tag=respawning] run function kitpvp:gamemode/utility/death/tick-respawn

# Round Win Conditions
execute as @a[tag=inGame] run scoreboard players operation @s gm.kills-copy = @s gm.kills
scoreboard players set highest gm.kills-copy 0
scoreboard players operation highest gm.kills-copy > @a[tag=inGame] gm.kills-copy
scoreboard players operation @a[tag=inGame] gm.kills-copy -= highest gm.kills-copy

execute store result score playersInLead gm.general if entity @a[scores={gm.kills-copy=0}]

# Detect if the round should end
function kitpvp:gamemode/01-deathmatch/win-conditions

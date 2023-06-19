# Run utility functions
function kitpvp:gamemode/utility/timer/tick
function kitpvp:gamemode/utility/killstreak/tick

give @a[scores={bin.kill=1}] cooked_beef 3

execute store result bossbar gm.bossbar value run scoreboard players get ticksRemaining gm.general

# Detect if running overtime
execute if score ticksRemaining gm.general matches ..-1 run function kitpvp:gamemode/02-team-deathmatch/overtime

execute if score ticksRemaining gm.general matches 0.. run bossbar set gm.bossbar name [{"text":"Time Remaining: ","color":"gold"},{"score":{"objective":"gm.general","name":"secondsRemaining"},"color":"gold"},{"text":" seconds","color":"gold"}]

# Run death functions on death
execute as @a[tag=inGame,scores={bin.deadGamemode=1},nbt={Health:20f}] run function kitpvp:gamemode/02-team-deathmatch/death/on-death
# Tick for respawn
execute as @a[tag=respawning] run function kitpvp:gamemode/utility/death/tick-respawn

# Update team kill counts
execute as @a[tag=inGame,team=red] run scoreboard players operation Red gm.sidebar += @s bin.kill
execute as @a[tag=inGame,team=blue] run scoreboard players operation Blue gm.sidebar += @s bin.kill
execute as @a[tag=inGame,team=green] run scoreboard players operation Green gm.sidebar += @s bin.kill
execute as @a[tag=inGame,team=yellow] run scoreboard players operation Yellow gm.sidebar += @s bin.kill

# Find highest scorer
scoreboard players operation red gm.kills-copy = Red gm.sidebar
scoreboard players operation blue gm.kills-copy = Blue gm.sidebar
scoreboard players operation green gm.kills-copy = Green gm.sidebar
scoreboard players operation yellow gm.kills-copy = Yellow gm.sidebar

scoreboard players set highest gm.kills-copy 0
scoreboard players operation highest gm.kills-copy > red gm.kills-copy
scoreboard players operation highest gm.kills-copy > blue gm.kills-copy
scoreboard players operation highest gm.kills-copy > green gm.kills-copy
scoreboard players operation highest gm.kills-copy > yellow gm.kills-copy

scoreboard players operation red gm.kills-copy -= highest gm.kills-copy
scoreboard players operation blue gm.kills-copy -= highest gm.kills-copy
scoreboard players operation green gm.kills-copy -= highest gm.kills-copy
scoreboard players operation yellow gm.kills-copy -= highest gm.kills-copy

# Detect if the round should end
function kitpvp:gamemode/02-team-deathmatch/win-conditions

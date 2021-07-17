function kitpvp:gamemode/utility/timer/tick
function kitpvp:gamemode/utility/killstreak-tick

execute store result bossbar gm.bossbar value run scoreboard players get ticksRemaining gm.general

execute if score ticksRemaining gm.general matches 0.. run bossbar set gm.bossbar name [{"text":"Time Remaining: ","color":"gold"},{"score":{"objective":"gm.general","name":"secondsRemaining"},"color":"gold"},{"text":" seconds","color":"gold"}]
execute if score ticksRemaining gm.general matches ..-1 run function kitpvp:gamemode/01-deathmatch/private/overtime

execute as @a[tag=inGame] run scoreboard players operation @s gm.kills-copy = @s gm.kills
scoreboard players set highest gm.kills-copy 0
scoreboard players operation highest gm.kills-copy > @a[tag=inGame] gm.kills-copy
scoreboard players operation @a[tag=inGame] gm.kills-copy -= highest gm.kills-copy

execute store result score playersInLead gm.general if entity @a[scores={gm.kills-copy=0}]

function kitpvp:gamemode/01-deathmatch/win-conditions

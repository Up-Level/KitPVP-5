function kitpvp:gamemode/utility/timer-tick

execute store result bossbar timer value run scoreboard players get ticksRemaining gm.general
bossbar set timer name [{"text":"Time Remaining: ","color":"gold"},{"score":{"objective":"gm.general","name":"secondsRemaining"},"color":"gold"},{"text":" seconds","color":"gold"}]

particle happy_villager 0.5 65 0.5 0.1 0.1 0.1 1 10 force

execute as @a[tag=inGame] run scoreboard players operation @s gm.kills-copy = @s gm.kills
scoreboard players set highest gm.kills-copy 0
scoreboard players operation highest gm.kills-copy > @a[tag=inGame] gm.kills-copy
scoreboard players operation @a[tag=inGame] gm.kills-copy -= highest gm.kills-copy

execute store result score playersInLead gm.general if entity @a[scores={gm.kills-copy=0}]

execute if score ticksRemaining gm.general matches 0 if score playersInLead gm.general matches 1 run function kitpvp:gamemode/01-deathmatch/end
execute if score playersInGame gm.general matches 1 run function kitpvp:gamemode/01-deathmatch/end

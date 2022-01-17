# Run utility functions
function kitpvp:gamemode/utility/timer/tick
function kitpvp:gamemode/utility/killstreak/tick

execute at @e[tag=flag-red,tag=!capturing] if entity @a[tag=inGame,team=!red,distance=..2] unless entity @a[tag=inGame,team=red,distance=..2] run function kitpvp:gamemode/06-ctf/capturing/red
execute at @e[tag=flag-blue,tag=!capturing] if entity @a[tag=inGame,team=!blue,distance=..2] unless entity @a[tag=inGame,team=blue,distance=..2] run function kitpvp:gamemode/06-ctf/capturing/blue
execute at @e[tag=flag-green,tag=!capturing] if entity @a[tag=inGame,team=!green,distance=..2] unless entity @a[tag=inGame,team=green,distance=..2] run function kitpvp:gamemode/06-ctf/capturing/green
execute at @e[tag=flag-yellow,tag=!capturing] if entity @a[tag=inGame,team=!yellow,distance=..2] unless entity @a[tag=inGame,team=yellow,distance=..2] run function kitpvp:gamemode/06-ctf/capturing/yellow

execute at @e[tag=flag-red,tag=!capturing] unless entity @a[tag=inGame,team=!red,distance=..2] run scoreboard players set red gm.capture-progress 0
execute at @e[tag=flag-blue,tag=!capturing] unless entity @a[tag=inGame,team=!blue,distance=..2] run scoreboard players set blue gm.capture-progress 0
execute at @e[tag=flag-green,tag=!capturing] unless entity @a[tag=inGame,team=!green,distance=..2] run scoreboard players set green gm.capture-progress 0
execute at @e[tag=flag-yellow,tag=!capturing] unless entity @a[tag=inGame,team=!yellow,distance=..2] run scoreboard players set yellow gm.capture-progress 0

effect give @a[tag=capturingRedFlag] glowing 1 0 true
effect give @a[tag=capturingBlueFlag] glowing 1 0 true
effect give @a[tag=capturingGreenFlag] glowing 1 0 true
effect give @a[tag=capturingYellowFlag] glowing 1 0 true

tp @e[tag=flag-red,tag=capturing] @a[tag=capturingRedFlag,limit=1]
tp @e[tag=flag-blue,tag=capturing] @a[tag=capturingBlueFlag,limit=1]
tp @e[tag=flag-green,tag=capturing] @a[tag=capturingGreenFlag,limit=1]
tp @e[tag=flag-blue,tag=capturing] @a[tag=capturingYellowFlag,limit=1]

execute as @e[tag=flag,tag=capturing] at @s run tp @s ~ ~1 ~

# Detect if running overtime
execute if score ticksRemaining gm.general matches ..-1 run function kitpvp:gamemode/06-ctf/overtime
execute if score ticksRemaining gm.general matches 0.. run bossbar set gm.bossbar name [{"text":"Time Remaining: ","color":"gold"},{"score":{"objective":"gm.general","name":"secondsRemaining"},"color":"gold"},{"text":" seconds","color":"gold"}]

# Run death functions on death
execute as @a[tag=inGame,scores={bin.dead=1},nbt={Health:20f}] run function kitpvp:gamemode/06-ctf/death/on-death
# Tick for respawn
execute as @a[tag=respawning] run function kitpvp:gamemode/utility/death-solo/tick-respawn

# Detect if the round should end
function kitpvp:gamemode/06-ctf/win-conditions

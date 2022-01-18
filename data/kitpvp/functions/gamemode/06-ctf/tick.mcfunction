# Run utility functions
function kitpvp:gamemode/utility/timer/tick
function kitpvp:gamemode/utility/killstreak/tick

# Detect if enemy player is near a flag
execute at @e[tag=flagRed,tag=!capturing] if entity @a[tag=inGame,team=!red,distance=..2] unless entity @a[tag=inGame,team=red,distance=..2] run function kitpvp:gamemode/06-ctf/stealing/red
execute at @e[tag=flagBlue,tag=!capturing] if entity @a[tag=inGame,team=!blue,distance=..2] unless entity @a[tag=inGame,team=blue,distance=..2] run function kitpvp:gamemode/06-ctf/stealing/blue
execute at @e[tag=flagGreen,tag=!capturing] if entity @a[tag=inGame,team=!green,distance=..2] unless entity @a[tag=inGame,team=green,distance=..2] run function kitpvp:gamemode/06-ctf/stealing/green
execute at @e[tag=flagYellow,tag=!capturing] if entity @a[tag=inGame,team=!yellow,distance=..2] unless entity @a[tag=inGame,team=yellow,distance=..2] run function kitpvp:gamemode/06-ctf/stealing/yellow

# Reset capture progress if enemy player leaves flag zone
execute at @e[tag=flagRed,tag=!capturing] unless entity @a[tag=inGame,team=!red,distance=..2] run scoreboard players set red gm.capture-progress 0
execute at @e[tag=flagBlue,tag=!capturing] unless entity @a[tag=inGame,team=!blue,distance=..2] run scoreboard players set blue gm.capture-progress 0
execute at @e[tag=flagGreen,tag=!capturing] unless entity @a[tag=inGame,team=!green,distance=..2] run scoreboard players set green gm.capture-progress 0
execute at @e[tag=flagYellow,tag=!capturing] unless entity @a[tag=inGame,team=!yellow,distance=..2] run scoreboard players set yellow gm.capture-progress 0

# Give players stealing flags glowing
effect give @a[tag=capturingRedFlag] glowing 1 0 true
effect give @a[tag=capturingBlueFlag] glowing 1 0 true
effect give @a[tag=capturingGreenFlag] glowing 1 0 true
effect give @a[tag=capturingYellowFlag] glowing 1 0 true

# Teleport stolen flag on top of enemy
tp @e[tag=flagRed,tag=capturing] @a[tag=capturingRedFlag,limit=1]
tp @e[tag=flagBlue,tag=capturing] @a[tag=capturingBlueFlag,limit=1]
tp @e[tag=flagGreen,tag=capturing] @a[tag=capturingGreenFlag,limit=1]
tp @e[tag=flagBlue,tag=capturing] @a[tag=capturingYellowFlag,limit=1]

# Move stolen flag one block up for visibility
execute as @e[tag=flag,tag=capturing] at @s run tp @s ~ ~1 ~

# Capture enemy flag if near friendly flag
execute as @e[tag=capturing,tag=flagRed] at @s if entity @e[tag=!capturing,tag=flag,tag=!flagRed,distance=..2] run function kitpvp:gamemode/06-ctf/capture/red
execute as @e[tag=capturing,tag=flagBlue] at @s if entity @e[tag=!capturing,tag=flag,tag=!flagBlue,distance=..2] run function kitpvp:gamemode/06-ctf/capture/blue
execute as @e[tag=capturing,tag=flagGreen] at @s if entity @e[tag=!capturing,tag=flag,tag=!flagGreen,distance=..2] run function kitpvp:gamemode/06-ctf/capture/green
execute as @e[tag=capturing,tag=flagYellow] at @s if entity @e[tag=!capturing,tag=flag,tag=!flagYellow,distance=..2] run function kitpvp:gamemode/06-ctf/capture/yellow

execute store result bossbar gm.bossbar value run scoreboard players get ticksRemaining gm.general

# Detect if running overtime
execute if score ticksRemaining gm.general matches ..-1 run function kitpvp:gamemode/06-ctf/overtime
execute if score ticksRemaining gm.general matches 0.. run bossbar set gm.bossbar name [{"text":"Time Remaining: ","color":"gold"},{"score":{"objective":"gm.general","name":"secondsRemaining"},"color":"gold"},{"text":" seconds","color":"gold"}]

# Run death functions on death
execute as @a[tag=inGame,scores={bin.dead=1},nbt={Health:20f}] run function kitpvp:gamemode/06-ctf/death/on-death
# Tick for respawn
execute as @a[tag=respawning] run function kitpvp:gamemode/utility/death-solo/tick-respawn

# Detect if the round should end
function kitpvp:gamemode/06-ctf/win-conditions

execute at @e[tag=flagGreen] run tag @r[distance=..2,team=!green,tag=inGame] add capturingGreenFlag
execute as @a[tag=capturingGreenFlag] run tag @s add capturingFlag

execute as @a[tag=inGame] at @s run playsound minecraft:block.note_block.chime player @s ~ ~ ~ 1 2 1
tag @e[tag=flagGreen] add capturing
scoreboard players set green gm.capture-progress 0

title @a[tag=inGame] subtitle [{"selector": "@a[tag=capturingGreenFlag]"},{"text": " has stolen Green's Flag!","color": "green"}]
title @a[tag=inGame] title ""

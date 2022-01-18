execute at @e[tag=flagRed] run tag @r[distance=..2,team=!red,tag=inGame] add capturingRedFlag
execute as @a[tag=inGame] at @s run playsound minecraft:block.note_block.chime player @s ~ ~ ~ 1 2 1
tag @e[tag=flagRed] add capturing
scoreboard players set red gm.capture-progress 0

title @a[tag=inGame] subtitle [{"selector": "@a[tag=capturingRedFlag]"},{"text": " has stolen Red's Flag!","color": "red"}]
title @a[tag=inGame] title ""

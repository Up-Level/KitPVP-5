execute at @e[tag=flagBlue] run tag @r[distance=..2,team=!blue,tag=inGame] add capturingBlueFlag
execute as @a[tag=capturingBlueFlag] run tag @s add capturingFlag

execute as @a[tag=inGame] at @s run playsound minecraft:block.note_block.chime player @s ~ ~ ~ 1 2 1
tag @e[tag=flagBlue] add capturing
scoreboard players set blue gm.capture-progress 0

title @a[tag=inGame] subtitle [{"selector": "@a[tag=capturingBlueFlag]"},{"text": " has stolen Blue's Flag!","color": "blue"}]
title @a[tag=inGame] title ""

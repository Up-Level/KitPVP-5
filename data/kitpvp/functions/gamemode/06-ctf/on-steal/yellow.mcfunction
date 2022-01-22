execute at @e[tag=flagYellow] run tag @r[distance=..2,team=!yellow,tag=inGame] add capturingYellowFlag
execute as @a[tag=capturingYellowFlag] run tag @s add capturingFlag

execute as @a[tag=inGame] at @s run playsound minecraft:block.note_block.chime player @s ~ ~ ~ 1 2 1
tag @e[tag=flagYellow] add capturing
scoreboard players set yellow gm.capture-progress 0

title @a[tag=inGame] subtitle [{"selector": "@a[tag=capturingYellowFlag]"},{"text": " has stolen Yellow's Flag!","color": "yellow"}]
title @a[tag=inGame] title ""

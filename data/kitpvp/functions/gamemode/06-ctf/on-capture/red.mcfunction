execute at @e[tag=flag-red] run tag @r[distance=..2,team=!red,tag=inGame] add capturingRedFlag
playsound minecraft:block.note_block.chime player @a[tag=capturingRedFlag] ~ ~ ~ 1 2 1
tag @e[tag=flag-red] add capturing
title @a[tag=inGame] subtitle [{"selector": "@a[tag=capturingRedFlag]"},{"text": " has stolen Red's Flag!","color": "red"}]
title @a[tag=inGame] title ""

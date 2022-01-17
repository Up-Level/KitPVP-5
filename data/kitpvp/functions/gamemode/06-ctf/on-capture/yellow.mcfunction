execute at @e[tag=flag-yellow] run tag @r[distance=..2,team=!yellow,tag=inGame] add capturingYellowFlag
tag @e[tag=flag-yellow] add capturing
title @a[tag=inGame] subtitle [{"selector": "@a[tag=capturingYellowFlag]"},{"text": " has stolen Yellow's Flag!","color": "yellow"}]
title @a[tag=inGame] title ""

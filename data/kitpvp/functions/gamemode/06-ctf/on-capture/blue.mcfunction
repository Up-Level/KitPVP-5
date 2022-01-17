execute at @e[tag=flag-blue] run tag @r[distance=..2,team=!blue,tag=inGame] add capturingBlueFlag
tag @e[tag=flag-blue] add capturing
title @a[tag=inGame] subtitle [{"selector": "@a[tag=capturingBlueFlag]"},{"text": " has stolen Blue's Flag!","color": "blue"}]
title @a[tag=inGame] title ""

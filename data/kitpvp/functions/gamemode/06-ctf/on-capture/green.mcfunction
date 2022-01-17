execute at @e[tag=flag-green] run tag @r[distance=..2,team=!green,tag=inGame] add capturingGreenFlag
tag @e[tag=flag-green] add capturing
title @a[tag=inGame] subtitle [{"selector": "@a[tag=capturingGreenFlag]"},{"text": " has stolen Green's Flag!","color": "green"}]
title @a[tag=inGame] title ""

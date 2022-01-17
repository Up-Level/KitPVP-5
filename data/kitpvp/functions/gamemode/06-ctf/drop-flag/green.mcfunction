data modify entity @e[tag=flag-green,limit=1] Pos set from storage current-map Map.Gamemodes.6.GreenSpawn
tag @e[tag=flag-green] remove capturing
title @a[tag=inGame] subtitle [{"selector": "@a[tag=capturingGreenFlag]"},{"text": " has dropped Green's Flag!","color": "green"}]
title @a[tag=inGame] title ""

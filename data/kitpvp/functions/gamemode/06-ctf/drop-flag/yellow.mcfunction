data modify entity @e[tag=flag-yellow,limit=1] Pos set from storage current-map Map.Gamemodes.6.YellowSpawn
tag @e[tag=flag-yellow] remove capturing
title @a[tag=inGame] subtitle [{"selector": "@a[tag=capturingYellowFlag]"},{"text": " has dropped Yellow's Flag!","color": "yellow"}]
title @a[tag=inGame] title ""

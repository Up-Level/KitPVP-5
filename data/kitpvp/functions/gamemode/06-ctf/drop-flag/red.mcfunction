data modify entity @e[tag=flag-red,limit=1] Pos set from storage current-map Map.Gamemodes.6.RedSpawn
tag @e[tag=flag-red] remove capturing
title @a[tag=inGame] subtitle [{"selector": "@a[tag=capturingRedFlag]"},{"text": " has dropped Red's Flag!","color": "red"}]
title @a[tag=inGame] title ""

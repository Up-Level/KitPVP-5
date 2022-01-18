data modify entity @e[tag=flagRed,limit=1] Pos set from storage current-map Map.Gamemodes.6.RedSpawn
tag @e[tag=flagRed] remove capturing
title @a[tag=inGame] subtitle [{"selector": "@a[tag=capturingRedFlag]"},{"text": " has dropped Red's Flag!","color": "red"}]
title @a[tag=inGame] title ""

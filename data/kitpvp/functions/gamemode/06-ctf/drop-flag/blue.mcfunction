data modify entity @e[tag=flag-blue,limit=1] Pos set from storage current-map Map.Gamemodes.6.BlueSpawn
tag @e[tag=flag-blue] remove capturing
title @a[tag=inGame] subtitle [{"selector": "@a[tag=capturingBlueFlag]"},{"text": " has dropped Blue's Flag!","color": "blue"}]
title @a[tag=inGame] title ""

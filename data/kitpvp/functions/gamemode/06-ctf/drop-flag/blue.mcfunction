data modify entity @e[tag=flagBlue,limit=1] Pos set from storage maps CurrentMap.Gamemodes.6.BlueSpawn
tag @e[tag=flagBlue] remove capturing
title @a[tag=inGame] subtitle [{"selector": "@a[tag=capturingBlueFlag]"},{"text": " has dropped Blue's Flag!","color": "blue"}]
title @a[tag=inGame] title ""

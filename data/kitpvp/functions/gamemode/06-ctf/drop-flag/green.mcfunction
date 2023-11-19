data modify entity @e[tag=flagGreen,limit=1] Pos set from storage maps CurrentMap.Gamemodes.6.GreenSpawn
tag @e[tag=flagGreen] remove capturing
title @a[tag=inGame] subtitle [{"selector": "@a[tag=capturingGreenFlag]"},{"text": " has dropped Green's Flag!","color": "green"}]
title @a[tag=inGame] title ""

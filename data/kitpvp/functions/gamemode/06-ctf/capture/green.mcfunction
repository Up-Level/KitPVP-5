execute if entity @e[tag=flagBlue,tag=!capturing,distance=..2] if entity @a[tag=capturingGreenFlag,team=blue] run scoreboard players add Blue gm.sidebar 1
execute if entity @e[tag=flagRed,tag=!capturing,distance=..2] if entity @a[tag=capturingGreenFlag,team=red] run scoreboard players add Red gm.sidebar 1
execute if entity @e[tag=flagYellow,tag=!capturing,distance=..2] if entity @a[tag=capturingGreenFlag,team=yellow] run scoreboard players add Yellow gm.sidebar 1

data modify entity @e[tag=flagGreen,limit=1] Pos set from storage maps CurrentMap.Gamemodes.6.GreenSpawn
tag @e[tag=flagGreen] remove capturing
title @a[tag=inGame] subtitle [{"selector": "@a[tag=capturingGreenFlag]"},{"text": " has captured Green's Flag!","color": "green"}]
title @a[tag=inGame] title ""

tag @a[tag=capturingGreenFlag] remove capturingFlag
tag @a remove capturingGreenFlag

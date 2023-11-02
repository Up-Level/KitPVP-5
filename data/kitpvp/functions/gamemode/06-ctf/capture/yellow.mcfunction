execute if entity @e[tag=flagBlue,tag=!capturing,distance=..2] if entity @a[tag=capturingYellowFlag,team=blue] run scoreboard players add Blue gm.sidebar 1
execute if entity @e[tag=flagGreen,tag=!capturing,distance=..2] if entity @a[tag=capturingYellowFlag,team=blue] run scoreboard players add Green gm.sidebar 1
execute if entity @e[tag=flagRed,tag=!capturing,distance=..2] if entity @a[tag=capturingYellowFlag,team=blue] run scoreboard players add Red gm.sidebar 1

data modify entity @e[tag=flagYellow,limit=1] Pos set from storage maps CurrentMap.Gamemodes.6.YellowSpawn
tag @e[tag=flagYellow] remove capturing
title @a[tag=inGame] subtitle [{"selector": "@a[tag=capturingYellowFlag]"},{"text": " has captured Yellow's Flag!","color": "yellow"}]
title @a[tag=inGame] title ""

tag @a[tag=capturingYellowFlag] remove capturingFlag
tag @a remove capturingYellowFlag

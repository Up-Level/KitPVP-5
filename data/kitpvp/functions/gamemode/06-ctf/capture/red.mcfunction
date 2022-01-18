execute if entity @e[tag=flagBlue,tag=!capturing,distance=..2] if entity @a[tag=capturingRedFlag,team=blue] run scoreboard players add Blue gm.sidebar 1
execute if entity @e[tag=flagGreen,tag=!capturing,distance=..2] if entity @a[tag=capturingRedFlag,team=green] run scoreboard players add Green gm.sidebar 1
execute if entity @e[tag=flagYellow,tag=!capturing,distance=..2] if entity @a[tag=capturingRedFlag,team=yellow] run scoreboard players add Yellow gm.sidebar 1

data modify entity @e[tag=flagRed,limit=1] Pos set from storage current-map Map.Gamemodes.6.RedSpawn
tag @e[tag=flagRed] remove capturing
title @a[tag=inGame] subtitle [{"selector": "@a[tag=capturingRedFlag]"},{"text": " has captured Red's Flag!","color": "red"}]
title @a[tag=inGame] title ""

tag @a[tag=capturingRedFlag] remove capturingRedFlag

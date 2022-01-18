execute if entity @e[tag=flagRed,tag=!capturing,distance=..2] if entity @a[tag=capturingBlueFlag,team=red] run scoreboard players add Red gm.sidebar 1
execute if entity @e[tag=flagGreen,tag=!capturing,distance=..2] if entity @a[tag=capturingBlueFlag,team=green] run scoreboard players add Green gm.sidebar 1
execute if entity @e[tag=flagYellow,tag=!capturing,distance=..2] if entity @a[tag=capturingBlueFlag,team=yellow] run scoreboard players add Yellow gm.sidebar 1

data modify entity @e[tag=flagBlue,limit=1] Pos set from storage current-map Map.Gamemodes.6.BlueSpawn
tag @e[tag=flagBlue] remove capturing
title @a[tag=inGame] subtitle [{"selector": "@a[tag=capturingBlueFlag]"},{"text": " has captured Blue's Flag!","color": "blue"}]
title @a[tag=inGame] title ""

tag @a[tag=capturingBlueFlag] remove capturingBlueFlag

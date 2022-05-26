# Edge cases the function

execute if entity @s[tag=inGame] run function kitpvp:loadout/revoke-items
execute if entity @s[tag=inGame] run function kitpvp:generic/coordinates/tp-spawn
clear @s[tag=inGame] cooked_beef

execute if entity @s[tag=respawning] run function kitpvp:loadout/edit/edit/revoke-edit

scoreboard players reset @s gm.kills
scoreboard players reset @s gm.kills-copy

tag @s remove inGame
tag @s remove respawning

tag @s remove capturingFlag
tag @s remove capturingRedFlag
tag @s remove capturingBlueFlag
tag @s remove capturingGreenFlag
tag @s remove capturingYellowFlag

function kitpvp:generic/uuid/get-uuid

scoreboard players set @s bin.join 0

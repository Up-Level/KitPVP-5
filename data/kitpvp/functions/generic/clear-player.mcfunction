# Edge cases the function

function kitpvp:loadout/equip/revoke-items
function kitpvp:effects/external/clear-all
function kitpvp:entity/player/external/destroy-all

advancement revoke @s only kitpvp:killed-by-player

execute if entity @s[tag=inGame] run function kitpvp:generic/coordinates/tp-spawn
clear @s[tag=inGame] cooked_beef

execute if entity @s[tag=respawning] run function kitpvp:loadout/edit/edit/revoke-edit

scoreboard players reset @s gm.kills
scoreboard players reset @s gm.kills-copy

scoreboard players set @s remainingLength -20

tag @s remove inGame
tag @s remove respawning

tag @s remove capturingFlag
tag @s remove capturingRedFlag
tag @s remove capturingBlueFlag
tag @s remove capturingGreenFlag
tag @s remove capturingYellowFlag

function kitpvp:generic/uuid/get-uuid

function kitpvp:effects/external/clear-all

scoreboard players set @s inMenu 0

scoreboard players set @s bin.join 0
tag @s add firstJoined

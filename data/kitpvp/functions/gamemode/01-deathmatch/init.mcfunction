tellraw @a[tag=inGame] [{"text":"Gamemode: Deathmatch","color": "gold","italic": true}, {"text": "\nGet the most kills within ","italic": false}, {"storage": "current-gamemode","nbt": "Gamemode.Settings.Duration","italic": false}, {"text":" seconds.","italic": false}]

scoreboard objectives remove gm.kills-copy
scoreboard objectives add gm.kills-copy dummy

scoreboard objectives setdisplay sidebar gm.kills

function kitpvp:gamemode/utility/timer/init
function kitpvp:gamemode/utility/bossbar
function kitpvp:gamemode/utility/killstreak/init

team join none @a[tag=inGame]

bossbar set gm.bossbar players @a[tag=inGame]

execute as @a[tag=inGame] run function kitpvp:loadout/grant-items-selected
execute as @a[tag=inGame] run function kitpvp:map/spawn/singleplayer

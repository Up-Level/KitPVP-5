tellraw @a[tag=inGame] [{"text":"Gamemode: Team Deathmatch","color": "gold","italic": true}, {"text": "\nBe the team to get the most kills in ","italic": false}, {"storage": "current-gamemode","nbt": "Gamemode.Settings.Duration","italic": false}, {"text":" seconds.","italic": false}]

scoreboard objectives remove gm.kills-copy
scoreboard objectives add gm.kills-copy dummy

scoreboard objectives modify gm.sidebar displayname {"text": "Team Kills","color": "gold"}
scoreboard players set Red gm.sidebar 0
scoreboard players set Blue gm.sidebar 0
scoreboard players set Green gm.sidebar 0
scoreboard players set Yellow gm.sidebar 0

scoreboard objectives setdisplay sidebar gm.sidebar
scoreboard objectives setdisplay list gm.kills

function kitpvp:gamemode/utility/timer-init
function kitpvp:gamemode/utility/bossbar
bossbar set timer players @a[tag=inGame]

# Run utility functions
function kitpvp:gamemode/utility/killstreak/init
function kitpvp:gamemode/utility/bossbar
function kitpvp:gamemode/utility/timer/init

# Show description tellraw
tellraw @a[tag=inGame] [{"text":"Gamemode: Deathmatch","color": "gold","italic": true}, {"text": "\nGet the most kills within ","italic": false}, {"storage": "current-gamemode","nbt": "Gamemode.Settings.Duration","italic": false}, {"text":" seconds.","italic": false}]

# Create additional scoreboards as required
scoreboard objectives remove gm.kills-copy
scoreboard objectives add gm.kills-copy dummy

# Show sidebar (usually gm.sidebar)
scoreboard objectives setdisplay sidebar gm.kills

team join none @a[tag=inGame]

bossbar set gm.bossbar players @a[tag=inGame]

# Start first round
function kitpvp:gamemode/01-deathmatch/new-round

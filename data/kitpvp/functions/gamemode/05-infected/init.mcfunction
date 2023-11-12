# Run utility functions
function kitpvp:gamemode/utility/killstreak/init
function kitpvp:gamemode/utility/timer/init
function kitpvp:gamemode/utility/bossbar

# Show description tellraw
tellraw @a[tag=inGame] [{"text":"Gamemode: Infected","color": "gold","italic": true}, {"text": "\nSurvive against the infected for ","italic": false}, {"storage": "current-gamemode","nbt": "Gamemode.Settings.Duration","italic": false}, {"text":" seconds.","italic": false}]

team join none @a[tag=inGame]

# Create additional scoreboards as required

# Show sidebar (usually gm.sidebar)
scoreboard objectives modify gm.sidebar displayname {"text":"Infected","color":"gold"}
scoreboard objectives setdisplay sidebar gm.sidebar
scoreboard objectives setdisplay list gm.kills

execute store result score firstInfection gm.general run data get storage gamemodes CurrentGamemode.Settings.FirstInfection
scoreboard players operation firstInfection gm.general *= #20 mathf.const

# Teams
team modify none friendlyFire false
team modify green friendlyFire false

bossbar set gm.bossbar players @a[tag=inGame]

# Start first round
function kitpvp:gamemode/05-infected/new-round

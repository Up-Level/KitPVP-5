# Run utility functions
function kitpvp:gamemode/utility/killstreak/init
function kitpvp:gamemode/utility/timer/init
function kitpvp:gamemode/utility/bossbar

# Show description tellraw
tellraw @a[tag=inGame] [{"text":"Gamemode: Team Deathmatch","color": "gold","italic": true}, {"text": "\nBe the team to get the most kills within ","italic": false}, {"storage": "current-gamemode","nbt": "Gamemode.Settings.Duration","italic": false}, {"text":" seconds.","italic": false}]

# Create additional scoreboards as required
scoreboard objectives remove gm.kills-copy
scoreboard objectives add gm.kills-copy dummy

scoreboard objectives modify gm.sidebar displayname {"text": "Team Kills","color": "gold"}
scoreboard players set Red gm.sidebar 0
scoreboard players set Blue gm.sidebar 0
scoreboard players set Green gm.sidebar 0
scoreboard players set Yellow gm.sidebar 0

#declare storage winning-team
data merge storage winning-team {Winner:"null"}

# Show sidebar (usually gm.sidebar)
scoreboard objectives setdisplay sidebar gm.sidebar
scoreboard objectives setdisplay list gm.kills

bossbar set gm.bossbar players @a[tag=inGame]

# Start first round
function kitpvp:gamemode/02-team-deathmatch/new-round

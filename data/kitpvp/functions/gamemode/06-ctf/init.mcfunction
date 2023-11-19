# Run utility functions
function kitpvp:gamemode/utility/killstreak/init
function kitpvp:gamemode/utility/timer/init
function kitpvp:gamemode/utility/bossbar

# Show description tellraw
tellraw @a[tag=inGame] [{"text":"Gamemode: Capture the Flag","color": "gold","italic": true}, {"text": "\nBe the first to Capture ","italic": false}, {"storage": "current-gamemode","nbt": "Gamemode.Settings.Captures","italic": false}, {"text":" flags.","italic": false}]

# Create additional scoreboards as required
execute store result score maxCaptures gm.general run data get storage gamemodes CurrentGamemode.Settings.Captures

execute store result score captureTime gm.general run data get storage gamemodes CurrentGamemode.Settings.CaptureTime
scoreboard players operation captureTime gm.general *= #20 mathf.const

scoreboard objectives remove gm.capture-progress
scoreboard objectives add gm.capture-progress dummy

scoreboard objectives remove gm.captures-copy
scoreboard objectives add gm.captures-copy dummy

# Show sidebar (usually gm.sidebar)
scoreboard objectives modify gm.sidebar displayname {"text": "Flag Captures","color": "gold"}
scoreboard objectives setdisplay sidebar gm.sidebar

bossbar set gm.bossbar players @a[tag=inGame]

schedule function kitpvp:gamemode/06-ctf/flag-particles 10t

# Start first round
function kitpvp:gamemode/06-ctf/new-round

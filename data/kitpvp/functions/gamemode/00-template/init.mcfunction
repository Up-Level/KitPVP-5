# Run utility functions
function kitpvp:gamemode/utility/timer/init

# Show description tellraw
tellraw @a[tag=inGame] [{"text":"Gamemode: Template","color": "gold","italic": true}, {"text": "\nComplete (objective) within ","italic": false}, {"storage": "current-gamemode","nbt": "Gamemode.Settings.Duration","italic": false}, {"text":" seconds.","italic": false}]

# Create additional scoreboards as required

# Show sidebar (usually gm.sidebar)
scoreboard objectives setdisplay sidebar gm.general

# Start first round
function kitpvp:gamemode/00-template/new-round

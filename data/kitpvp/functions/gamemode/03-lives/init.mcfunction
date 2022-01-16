# Run utility functions
function kitpvp:gamemode/utility/killstreak/init

# Show description tellraw
tellraw @a[tag=inGame] [{"text":"Gamemode: Lives","color": "gold","italic": true}, {"text": "\nBe the last person standing. ","italic": false}]

team join none @a[tag=inGame]

# Create additional scoreboards as required
scoreboard objectives remove gm.lives
scoreboard objectives add gm.lives dummy

# Show sidebar (usually gm.sidebar)
scoreboard objectives setdisplay sidebar gm.kills
scoreboard objectives setdisplay list gm.lives

# Start first round
function kitpvp:gamemode/03-lives/new-round

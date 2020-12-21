tellraw @a[scores={ready=1}] {"text": "Loading Map... (This may take a while)","color": "light_purple"}

function kitpvp:map/clone-map

# Countdown
scoreboard players set countdown temp 3

schedule function kitpvp:interface/private/display-countdown 3s
schedule function kitpvp:interface/private/display-countdown 4s
schedule function kitpvp:interface/private/display-countdown 5s append
schedule function kitpvp:gamemode/init 6s

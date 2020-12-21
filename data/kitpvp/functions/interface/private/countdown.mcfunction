tellraw @a[scores={ready=1}] {"text": "Loading Map... (This may take a while)","color": "light_purple"}

function kitpvp:map/clone-map

# Countdown
scoreboard players set countdown temp 3

function kitpvp:interface/private/display-countdown
schedule function kitpvp:interface/private/display-countdown 1s
schedule function kitpvp:interface/private/display-countdown 2s append
schedule function kitpvp:gamemode/init 3s

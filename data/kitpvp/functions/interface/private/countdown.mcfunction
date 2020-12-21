function kitpvp:map/clone-map

# Countdown
scoreboard players set countdown temp 3

schedule function kitpvp:interface/private/display-countdown 4.5s
schedule function kitpvp:interface/private/display-countdown 5.5s append
schedule function kitpvp:interface/private/display-countdown 6.5s append
schedule function kitpvp:gamemode/init 7.5s

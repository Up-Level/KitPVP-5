scoreboard players set countdown temp 3

function kitpvp:interface/private/display-countdown
schedule function kitpvp:interface/private/display-countdown 1s
schedule function kitpvp:interface/private/display-countdown 2s append
schedule function kitpvp:interface/start-nochecks 3s

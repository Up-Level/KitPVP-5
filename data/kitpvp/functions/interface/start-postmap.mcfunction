# Countdown
scoreboard players set countdown temp 3

# Add effects to stop movement
effect give @a[scores={ready=1}] slowness 4 255 true
effect give @a[scores={ready=1}] slow_falling 4 0 true
effect give @a[scores={ready=1}] jump_boost 4 128 true

function kitpvp:map/maps/init

schedule function kitpvp:interface/private/display-countdown 1s append
schedule function kitpvp:interface/private/display-countdown 2s append
schedule function kitpvp:interface/private/display-countdown 3s append
schedule function kitpvp:gamemode/init 4s

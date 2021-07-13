function kitpvp:map/load-unload/clone-map

# Countdown
scoreboard players set countdown temp 3

# Add effects to stop movement
effect give @a[scores={ready=1}] slowness 8 255 true
effect give @a[scores={ready=1}] slow_falling 8 0 true
effect give @a[scores={ready=1}] jump_boost 8 128 true

schedule function kitpvp:interface/private/display-countdown 4.5s
schedule function kitpvp:interface/private/display-countdown 5.5s append
schedule function kitpvp:interface/private/display-countdown 6.5s append
schedule function kitpvp:gamemode/init 7.5s

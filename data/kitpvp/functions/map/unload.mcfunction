tellraw @a[scores={ready=1}] {"text": "Initialising Map Functionality...","color": "light_purple"}
function kitpvp:map/init

forceload remove all
forceload add 0 0

tellraw @a[scores={ready=1}] {"text": "Map Loaded.","color": "light_purple"}

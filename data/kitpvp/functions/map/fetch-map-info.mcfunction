# Map 0 should be a special case for no map, and anything lower doesn't make sense
execute if score map info matches ..0 run return 0

# Sticking to the previous convention where map ids start from 1
scoreboard players operation mapId temp = map info
scoreboard players remove mapId temp 1

execute store result storage __temp__ MapId int 1 run scoreboard players get mapId temp
function kitpvp:map/fetch-macro with storage __temp__

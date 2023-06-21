# Calculate midpoint
scoreboard players operation xm temp = x0 temp
scoreboard players operation xm temp += x1 temp
scoreboard players operation xm temp /= #2 mathf.const

scoreboard players operation ym temp = y0 temp
scoreboard players operation ym temp += y1 temp
scoreboard players operation ym temp /= #2 mathf.const

scoreboard players operation zm temp = z0 temp
scoreboard players operation zm temp += z1 temp
scoreboard players operation zm temp /= #2 mathf.const


scoreboard players operation xDiff temp = x1 temp
scoreboard players operation xDiff temp -= x0 temp

scoreboard players operation yDiff temp = y1 temp
scoreboard players operation yDiff temp -= y0 temp

scoreboard players operation zDiff temp = z1 temp
scoreboard players operation zDiff temp -= z0 temp

scoreboard players operation xDiff temp += #1 mathf.const
scoreboard players operation yDiff temp += #1 mathf.const
scoreboard players operation zDiff temp += #1 mathf.const


scoreboard players operation zDiv temp = xDiff temp
scoreboard players operation zDiv temp *= yDiff temp


scoreboard players operation iterations temp = xDiff temp
scoreboard players operation iterations temp *= yDiff temp
scoreboard players operation iterations temp *= zDiff temp

scoreboard players set i temp 0

tag @e[tag=newBlockDisplay] remove newBlockDisplay

summon marker 0 0 0 {Tags:["blockMidpoint"]}
execute store result entity @e[tag=blockMidpoint,limit=1] Pos[0] double 1 run scoreboard players get xm temp
execute store result entity @e[tag=blockMidpoint,limit=1] Pos[1] double 1 run scoreboard players get ym temp
execute store result entity @e[tag=blockMidpoint,limit=1] Pos[2] double 1 run scoreboard players get zm temp

summon marker 0 0 0 {Tags:["bMarker"]}
execute at @e[tag=blockMidpoint] run function kitpvp:generic/block-display/private/loop
kill @e[tag=bMarker]

kill @e[tag=blockMidpoint]

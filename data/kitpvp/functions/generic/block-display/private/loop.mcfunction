scoreboard players operation x temp = i temp
scoreboard players operation x temp %= xDiff temp

scoreboard players operation y temp = i temp
scoreboard players operation y temp %= zDiv temp
scoreboard players operation y temp /= xDiff temp

scoreboard players operation z temp = i temp
scoreboard players operation z temp /= zDiv temp

scoreboard players operation worldX temp = x temp
scoreboard players operation worldX temp += x0 temp

scoreboard players operation worldY temp = y temp
scoreboard players operation worldY temp += y0 temp

scoreboard players operation worldZ temp = z temp
scoreboard players operation worldZ temp += z0 temp


# Offsets are scaled by 10 to allow for 0.5 offset
scoreboard players operation xOffset temp = worldX temp
scoreboard players operation xOffset temp -= xm temp
scoreboard players operation xOffset temp *= #10 mathf.const
scoreboard players operation xOffset temp -= #5 mathf.const

scoreboard players operation yOffset temp = worldY temp
scoreboard players operation yOffset temp -= ym temp
scoreboard players operation yOffset temp *= #10 mathf.const
scoreboard players operation yOffset temp -= #5 mathf.const

scoreboard players operation zOffset temp = worldZ temp
scoreboard players operation zOffset temp -= zm temp
scoreboard players operation zOffset temp *= #10 mathf.const
scoreboard players operation zOffset temp -= #5 mathf.const

execute store result entity @e[tag=bMarker,limit=1] Pos[0] double 1 run scoreboard players get worldX temp
execute store result entity @e[tag=bMarker,limit=1] Pos[1] double 1 run scoreboard players get worldY temp
execute store result entity @e[tag=bMarker,limit=1] Pos[2] double 1 run scoreboard players get worldZ temp

execute at @e[tag=bMarker,limit=1] unless block ~ ~ ~ air at @e[tag=blockMidpoint] run function kitpvp:generic/block-display/private/block

scoreboard players add i temp 1

execute if score i temp < iterations temp run function kitpvp:generic/block-display/private/loop

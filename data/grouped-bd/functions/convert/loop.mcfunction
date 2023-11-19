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

execute store result storage __temp__ Pos[0] double 1 run scoreboard players get worldX temp
execute store result storage __temp__ Pos[1] double 1 run scoreboard players get worldY temp
execute store result storage __temp__ Pos[2] double 1 run scoreboard players get worldZ temp
data modify entity @e[tag=bMarker,limit=1] Pos set from storage __temp__ Pos

execute at @e[tag=bMarker] unless block ~ ~ ~ #kitpvp:invalid_block_display at @e[tag=blockMidpoint] run function grouped-bd:convert/block

scoreboard players add i temp 1

execute if score i temp < iterations temp run function grouped-bd:convert/loop

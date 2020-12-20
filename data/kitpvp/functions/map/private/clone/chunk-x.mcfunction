scoreboard players operation offsetX temp = chunkX temp
scoreboard players operation offsetX temp *= #16 mathf.const
scoreboard players operation posX temp += offsetX temp

scoreboard players set chunkY temp 0
function kitpvp:map/private/clone/chunk-y

execute if score chunkX temp < chunkXMax temp run scoreboard players add chunkX temp 1
execute if score chunkX temp < chunkXMax temp run function kitpvp:map/private/clone/chunk-x

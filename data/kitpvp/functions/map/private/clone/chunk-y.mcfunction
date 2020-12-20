scoreboard players operation offsetY temp = chunkY temp
scoreboard players operation offsetY temp *= #16 mathf.const
scoreboard players operation posY temp += offsetY temp

scoreboard players set chunkZ temp 0
function kitpvp:map/private/clone/chunk-z

execute if score chunkY temp < chunkYMax temp run scoreboard players add chunkY temp 1
execute if score chunkY temp < chunkYMax temp run function kitpvp:map/private/clone/chunk-y

scoreboard players operation offsetX temp = chunkX temp
scoreboard players operation offsetX temp *= #32 mathf.const

execute store result score posX temp run data get storage current-map Map.Corner1[0]
scoreboard players operation posX temp += offsetX temp

scoreboard players set chunkY temp 0
function kitpvp:map/private/clone/chunk-y

execute if score chunkX temp < chunkXMax temp run scoreboard players add chunkX temp 1

tellraw @a[scores={ready=1}] [{"text": "Loading ","color": "light_purple"},{"score": {"name": "chunkX","objective": "temp"}}, "/", {"score": {"name": "chunkXMax","objective": "temp"}}]

execute if score chunkX temp < chunkXMax temp run function kitpvp:map/private/clone/chunk-x

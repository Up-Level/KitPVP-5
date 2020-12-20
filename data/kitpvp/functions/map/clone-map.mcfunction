kill @e[tag=cloneChunker]

summon minecraft:area_effect_cloud 0 64 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["cloneChunker"]}

data modify entity @e[tag=cloneChunker,limit=1] Pos set from storage minecraft:current-map Map.Corner1

scoreboard players set chunkX temp 0

execute store result score posX temp run data get storage current-map Map.Corner1[0]
execute store result score posY temp run data get storage current-map Map.Corner1[1]
execute store result score posZ temp run data get storage current-map Map.Corner1[2]

execute store result score chunkXMax temp run data get storage current-map Map.Chunks[0]
execute store result score chunkYMax temp run data get storage current-map Map.Chunks[1]
execute store result score chunkZMax temp run data get storage current-map Map.Chunks[2]

function kitpvp:map/private/clone/chunk-x

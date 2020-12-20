kill @e[tag=cloneChunker]
kill @e[tag=cloneChunkerNew]
kill @e[tag=mapPoint1]

summon minecraft:area_effect_cloud 0 64 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["cloneChunker"]}
summon minecraft:area_effect_cloud 0 64 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["cloneChunkerNew"]}
summon minecraft:area_effect_cloud 0 64 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["mapPoint1"]}

# data modify entity @e[tag=cloneChunker,limit=1] Pos set from storage current-map Map.Corner1
data modify entity @e[tag=mapPoint1,limit=1] Pos set from storage current-map Map.Corner1

scoreboard players set chunkX temp 0

execute store result score posX temp run data get storage current-map Map.Corner1[0]
execute store result score posY temp run data get storage current-map Map.Corner1[1]
execute store result score posZ temp run data get storage current-map Map.Corner1[2]

execute store result score chunkXMax temp run data get storage current-map Map.Chunks[0]
execute store result score chunkYMax temp run data get storage current-map Map.Chunks[1]
execute store result score chunkZMax temp run data get storage current-map Map.Chunks[2]

forceload remove all

forceload add -1 9999 0 10000

schedule function kitpvp:map/private/clone/start 30t replace

kill @e[tag=cloneChunker]
kill @e[tag=cloneChunkerNew]
kill @e[tag=mapPoint1]

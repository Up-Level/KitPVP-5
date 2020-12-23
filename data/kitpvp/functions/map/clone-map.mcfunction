tellraw @a {"text": "Loading Map... (This may take a while)","color": "light_purple"}

kill @e[tag=cloneChunker]
kill @e[tag=cloneChunkerNew]

summon minecraft:area_effect_cloud 0 64 10000 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["cloneChunker"]}
summon minecraft:area_effect_cloud 0 64 10000 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["cloneChunkerNew"]}

scoreboard players set chunkX temp 0

execute store result score posX temp run data get storage current-map Map.Corner1[0]
execute store result score posY temp run data get storage current-map Map.Corner1[1]
execute store result score posZ temp run data get storage current-map Map.Corner1[2]

execute store result score chunkXMax temp run data get storage current-map Map.Chunks[0]
execute store result score chunkYMax temp run data get storage current-map Map.Chunks[1]
execute store result score chunkZMax temp run data get storage current-map Map.Chunks[2]

# Jank ass solution but it works almost.

forceload remove all
forceload add -1 9999 32 10032

execute as @e[tag=cloneChunker,limit=1] at @s run function kitpvp:map/private/clone/first-load

schedule function kitpvp:map/private/clone/start 60t replace

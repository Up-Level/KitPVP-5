tellraw @a {"text": "Unloading Previous Map... (This may take a while)","color": "light_purple"}
execute as @e[tag=destroyerOfWorlds] at @s run function kitpvp:map/private/clone/destroy-map

tellraw @a {"text": "Loading New Map... (This may take a while)","color": "light_purple"}
function kitpvp:map/private/clone/chunk-x

kill @e[tag=cloneChunker]
kill @e[tag=cloneChunkerNew]
kill @e[tag=mapPoint1]

schedule function kitpvp:map/unload 30t append

function kitpvp:map/private/clone/chunk-x

kill @e[tag=cloneChunker]
kill @e[tag=cloneChunkerNew]
kill @e[tag=mapPoint1]

schedule function kitpvp:map/unload 30t append

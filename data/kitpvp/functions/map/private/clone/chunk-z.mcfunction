execute if score chunkZ temp < chunkZMax temp run scoreboard players add chunkZ temp 1
execute if score chunkZ temp < chunkZMax temp run function kitpvp:map/private/clone/chunk-z

tellraw @a [{"score": {"objective": "temp","name": "chunkX"}}, " ", {"score": {"objective": "temp","name": "chunkY"}}, " ", {"score": {"objective": "temp","name": "chunkZ"}}]

# Cloning to:
#scoreboard players set target.pos.x clone 0
#scoreboard players set target.pos.y clone 0
#scoreboard players set target.pos.z clone 0
execute store result score target.pos.x clone run data get storage current-map Map.Offset[0]
execute store result score target.pos.y clone run data get storage current-map Map.Offset[1]
execute store result score target.pos.z clone run data get storage current-map Map.Offset[2]

# Cloning from:
#scoreboard players set source.pos.x clone 0
#scoreboard players set source.pos.y clone 16
#scoreboard players set source.pos.z clone 0
execute store result score source.pos.x clone run data get storage current-map Map.Corner1[0]
execute store result score source.pos.y clone run data get storage current-map Map.Corner1[1]
execute store result score source.pos.z clone run data get storage current-map Map.Corner1[2]

# Scale in 32*32*32 areas
#scoreboard players set source.scale.x clone 2
#scoreboard players set source.scale.y clone 2
#scoreboard players set source.scale.z clone 2
execute store result score source.scale.x clone run data get storage current-map Map.Chunks[0]
execute store result score source.scale.y clone run data get storage current-map Map.Chunks[1]
execute store result score source.scale.z clone run data get storage current-map Map.Chunks[2]

function bigclone:start-clone

# Tag all valid spawnpoints with validSpawn
execute as @e[tag=spawnPoint] at @s run function kitpvp:map/teleport/spawn-distance

# Tp to a valid spawn if available
execute store success score successfulTeleport temp run tp @s @e[tag=validSpawn,limit=1,sort=random]

# Otherwise, just teleport to any spawnpoint
execute if score successfulTeleport temp matches 0 run tp @s @e[tag=spawnPoint,limit=1,sort=random]

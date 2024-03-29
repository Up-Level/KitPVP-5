#> kitpvp:map/spawn/multiple-player
# @context any

# Tag all valid spawnpoints with validSpawn
execute as @e[tag=spawnPoint] at @s run function kitpvp:map/spawn/spawn-distance

# Tp to a valid spawn if available
execute store success score successfulTeleport temp run tp @a[tag=group] @e[tag=validSpawn,limit=1,sort=random]

# Otherwise, just teleport to any spawnpoint
execute if score successfulTeleport temp matches 0 run tp @a[tag=group] @e[tag=spawnPoint,limit=1,sort=random]

execute at @s run tp @s ~ ~ ~ facing 0 ~ 0

tag @a remove group

# Ensure area is loaded before running this

kill @e[tag=spawnpoint]

execute positioned 16 1 16 run function kitpvp:map/teleport/new-spawnpoint
execute positioned 16 1 32 run function kitpvp:map/teleport/new-spawnpoint
execute positioned 64 1 64 run function kitpvp:map/teleport/new-spawnpoint

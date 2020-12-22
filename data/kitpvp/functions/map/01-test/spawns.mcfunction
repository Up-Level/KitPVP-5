# Ensure area is loaded before running this

kill @e[tag=spawnpoint]

execute positioned 16 2 16 run function kitpvp:map/teleport/new-spawnpoint
execute positioned 16 2 32 run function kitpvp:map/teleport/new-spawnpoint
execute positioned 64 2 64 run function kitpvp:map/teleport/new-spawnpoint

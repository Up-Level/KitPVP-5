# Ensure area is loaded before running this

kill @e[tag=spawnpoint]

execute positioned 16 17 16 run function kitpvp:map/teleport/new-spawnpoint
execute positioned 16 17 32 run function kitpvp:map/teleport/new-spawnpoint
execute positioned 64 17 64 run function kitpvp:map/teleport/new-spawnpoint

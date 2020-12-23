# Ensure area is loaded before running this

kill @e[tag=spawnPoint]

execute positioned 8.0 1 8.0 run function kitpvp:map/teleport/new-spawnpoint
execute positioned 24.0 1 8.0 run function kitpvp:map/teleport/new-spawnpoint
execute positioned 8.0 1 24.0 run function kitpvp:map/teleport/new-spawnpoint
execute positioned 24.0 1 24.0 run function kitpvp:map/teleport/new-spawnpoint

execute positioned 8.0 1 40.0 run function kitpvp:map/teleport/new-spawnpoint
execute positioned 24.0 1 40.0 run function kitpvp:map/teleport/new-spawnpoint
execute positioned 8.0 1 56.0 run function kitpvp:map/teleport/new-spawnpoint
execute positioned 24.0 1 56.0 run function kitpvp:map/teleport/new-spawnpoint

execute positioned 40.0 1 8.0 run function kitpvp:map/teleport/new-spawnpoint
execute positioned 56.0 1 8.0 run function kitpvp:map/teleport/new-spawnpoint
execute positioned 40.0 1 24.0 run function kitpvp:map/teleport/new-spawnpoint
execute positioned 56.0 1 24.0 run function kitpvp:map/teleport/new-spawnpoint

execute positioned 40.0 1 40.0 run function kitpvp:map/teleport/new-spawnpoint
execute positioned 56.0 1 40.0 run function kitpvp:map/teleport/new-spawnpoint
execute positioned 40.0 1 56.0 run function kitpvp:map/teleport/new-spawnpoint
execute positioned 56.0 1 56.0 run function kitpvp:map/teleport/new-spawnpoint

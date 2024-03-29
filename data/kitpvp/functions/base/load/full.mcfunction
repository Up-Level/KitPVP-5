function kitpvp:base/load/load

function kitpvp:base/load/scoreboards/loadouts/slots/create-slots

setworldspawn -10000 64 0

# Gamerules
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doMobSpawning false
gamerule doWeatherCycle false
gamerule keepInventory true
gamerule mobGriefing false
gamerule randomTickSpeed 0
gamerule showDeathMessages false
gamerule spawnRadius 0
gamerule doImmediateRespawn true
gamerule doTileDrops false

difficulty hard

# Config
# Declarations for vscode
#declare score_holder respawnTime
#declare score_holder spawnDistance
#declare score_holder sqrSpawnDistance

scoreboard objectives remove config
scoreboard objectives add config dummy

scoreboard players set respawnTime config 200

scoreboard players set spawnDistance config 15
scoreboard players operation sqrSpawnDistance config = spawnDistance config
scoreboard players operation sqrSpawnDistance config *= spawnDistance config

# Stats
scoreboard objectives add timePlayed dummy
scoreboard objectives add wins dummy
scoreboard objectives add totalKills playerKillCount
scoreboard objectives add totalDeaths deathCount
scoreboard objectives add totalDamageDealt minecraft.custom:damage_dealt
scoreboard objectives add totalDamageTaken minecraft.custom:damage_taken

# Reset player settings
scoreboard objectives setdisplay list wins

# Forceload
forceload remove all
forceload add -10000 0
forceload add -19981 24
forceload add 32 10032 -1 9999

# Forceloads a 111 block radius around 0,0
forceload add -97 -97 96 96

function kitpvp:load/base

function kitpvp:load/scoreboards/loadouts/slots/create-slots

setworldspawn 10000 64 0

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

difficulty normal

# Config
scoreboard objectives remove config
scoreboard objectives add config dummy
scoreboard players set spawnDistance config 15

# Stats
scoreboard objectives add timePlayed dummy
scoreboard objectives add wins dummy
scoreboard objectives add totalKills playerKillCount
scoreboard objectives add totalDeaths deathCount
scoreboard objectives add totalDamageDealt minecraft.custom:damage_dealt
scoreboard objectives add totalDamageTaken minecraft.custom:damage_taken

# Forceload lobby
forceload remove all
forceload add 9976 -24 10024 24

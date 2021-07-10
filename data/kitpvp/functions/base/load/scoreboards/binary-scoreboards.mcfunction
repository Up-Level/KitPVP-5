# Binary scoreboards spam zone

scoreboard objectives remove dead
scoreboard objectives add dead deathCount

scoreboard objectives remove kill
scoreboard objectives add kill playerKillCount

scoreboard objectives remove crouch
scoreboard objectives add crouch minecraft.custom:sneak_time

scoreboard objectives remove useFungusStick
scoreboard objectives add useFungusStick minecraft.used:warped_fungus_on_a_stick

# Funky Kong
scoreboard objectives remove touchingWall
scoreboard objectives add touchingWall dummy

# Binary scoreboards spam zone

scoreboard objectives remove bin.dead
scoreboard objectives add bin.dead deathCount

scoreboard objectives remove bin.kill
scoreboard objectives add bin.kill playerKillCount

scoreboard objectives remove bin.sneak
scoreboard objectives add bin.sneak minecraft.custom:sneak_time

scoreboard objectives remove bin.carrot
scoreboard objectives add bin.carrot minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives remove bin.fungus
scoreboard objectives add bin.fungus minecraft.used:warped_fungus_on_a_stick

# Funky Kong
scoreboard objectives remove bin.wall
scoreboard objectives add bin.wall dummy

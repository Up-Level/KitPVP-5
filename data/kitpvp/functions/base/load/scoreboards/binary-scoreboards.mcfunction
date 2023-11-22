# Binary scoreboards spam zone

scoreboard objectives remove bin.dead
scoreboard objectives add bin.dead deathCount

scoreboard objectives remove bin.kill
scoreboard objectives add bin.kill playerKillCount

scoreboard objectives remove bin.carrot
scoreboard objectives add bin.carrot minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives remove bin.fungus
scoreboard objectives add bin.fungus minecraft.used:warped_fungus_on_a_stick

scoreboard objectives remove bin.fungusDropped
scoreboard objectives add bin.fungusDropped minecraft.dropped:minecraft.warped_fungus_on_a_stick

scoreboard objectives remove bin.join
scoreboard objectives add bin.join minecraft.custom:minecraft.leave_game

scoreboard objectives remove bin.damageTaken
scoreboard objectives add bin.damageTaken minecraft.custom:damage_taken

scoreboard objectives remove bin.damageDealt
scoreboard objectives add bin.damageDealt minecraft.custom:damage_dealt

# Funky Kong
scoreboard objectives remove bin.wall
scoreboard objectives add bin.wall dummy

scoreboard objectives remove bin.deadGamemode
scoreboard objectives add bin.deadGamemode deathCount

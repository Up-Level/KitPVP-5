$execute store result score songChoice temp run random value 1..$(CategoryLength)

# Prevent same song from being played twice
execute if score songChoice temp = @s currentSong run function kitpvp:generic/music/random-from-category with storage __temp__

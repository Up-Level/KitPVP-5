# Get current index
execute store result score index temp run data get storage __temp__ MusicCategory.Songs
scoreboard players remove index temp 1

# Comparison
execute store success score songMatched temp if score index temp = songChoice temp

# If matched
execute if score songMatched temp matches 1 run data modify storage __temp__ SongChoice set from storage __temp__ MusicCategory.Songs[-1]

# If not matched
execute if score songMatched temp matches 0 run data remove storage __temp__ MusicCategory.Songs[-1]
execute if score songMatched temp matches 0 run execute if score index temp matches 1.. run function kitpvp:generic/music/find-song

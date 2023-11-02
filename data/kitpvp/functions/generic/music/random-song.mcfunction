execute if score @s musicCategory matches 1 run data modify storage __temp__ MusicCategory set from storage music Categories[0]
execute if score @s musicCategory matches 2 run data modify storage __temp__ MusicCategory set from storage music Categories[1]
execute if score @s musicCategory matches 3 run data modify storage __temp__ MusicCategory set from storage music Categories[2]
execute if score @s musicCategory matches 4 run data modify storage __temp__ MusicCategory set from storage music Categories[3]

execute store result storage __temp__ CategoryLength int 1 run data get storage __temp__ MusicCategory.Songs

function kitpvp:generic/music/random-from-category with storage __temp__
scoreboard players operation @s currentSong = songChoice temp
execute store result storage __temp__ SongId int 1 run scoreboard players get songChoice temp

function kitpvp:generic/music/find-song with storage __temp__

execute store result score @s remainingLength run data get storage __temp__ SongChoice.Duration

tellraw @s [{"text":"Now Playing: ","color": "gold"}, {"storage":"__temp__","nbt":"SongChoice.DisplayName","color": "white"}]

data modify storage __temp__ SongChoice.CategoryName set from storage __temp__ MusicCategory.Name
function kitpvp:generic/music/play-song with storage __temp__ SongChoice

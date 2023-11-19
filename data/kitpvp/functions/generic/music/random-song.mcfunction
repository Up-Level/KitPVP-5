execute if entity @s[tag=inGame,tag=ingameMusic] run data modify storage __temp__ MusicCategory set from storage music Categories[0]
execute if entity @s[tag=!inGame,tag=menuMusic] run data modify storage __temp__ MusicCategory set from storage music Categories[1]

execute store result score categoryLength temp run data get storage __temp__ MusicCategory.Songs
scoreboard players remove categoryLength temp 1
execute store result storage __temp__ CategoryLength int 1 run scoreboard players get categoryLength temp

function kitpvp:generic/music/random-from-category with storage __temp__
scoreboard players operation @s currentSong = songChoice temp
execute store result storage __temp__ SongId int 1 run scoreboard players get songChoice temp

function kitpvp:generic/music/find-song with storage __temp__

execute store result score @s remainingLength run data get storage __temp__ SongChoice.Duration

execute if data storage __temp__ MusicCategory.DisplayNames run tellraw @s [{"text":"Now Playing: ","color": "gold"}, {"storage":"__temp__","nbt":"SongChoice.DisplayName","color": "white"}]

data modify storage __temp__ SongChoice.CategoryName set from storage __temp__ MusicCategory.Name
function kitpvp:generic/music/play-song with storage __temp__ SongChoice

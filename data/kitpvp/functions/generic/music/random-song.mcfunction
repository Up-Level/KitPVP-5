# Random function from https://www.youtube.com/watch?v=3Ui102TwlBg

function kitpvp:generic/music/random-from-category
scoreboard players operation @s currentSong = songChoice temp

execute if score @s musicCategory matches 1 run data modify storage __temp__ MusicCategory set from storage music Categories[0]
execute if score @s musicCategory matches 2 run data modify storage __temp__ MusicCategory set from storage music Categories[1]
execute if score @s musicCategory matches 3 run data modify storage __temp__ MusicCategory set from storage music Categories[2]
execute if score @s musicCategory matches 4 run data modify storage __temp__ MusicCategory set from storage music Categories[3]

function kitpvp:generic/music/find-song

execute store result score @s remainingLength run data get storage __temp__ SongChoice.Duration

tellraw @s [{"text":"Now Playing: ","color": "gold"}, {"storage":"__temp__","nbt":"SongChoice.Name"}]

execute if score @s musicCategory matches 1 run function kitpvp:generic/music/categories/idk
execute if score @s musicCategory matches 2 run function kitpvp:generic/music/categories/ultrakill
execute if score @s musicCategory matches 3 run function kitpvp:generic/music/categories/jungle
execute if score @s musicCategory matches 4 run function kitpvp:generic/music/categories/technohouse

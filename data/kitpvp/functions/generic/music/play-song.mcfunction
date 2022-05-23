execute if score songChoice temp matches 0 store result score @s remainingLength run data get storage music-00 Duration
execute if score songChoice temp matches 1 store result score @s remainingLength run data get storage music-01 Duration
execute if score songChoice temp matches 2 store result score @s remainingLength run data get storage music-02 Duration
execute if score songChoice temp matches 3 store result score @s remainingLength run data get storage music-03 Duration
execute if score songChoice temp matches 4 store result score @s remainingLength run data get storage music-04 Duration
execute if score songChoice temp matches 5 store result score @s remainingLength run data get storage music-05 Duration

execute if score songChoice temp matches 10 store result score @s remainingLength run data get storage music-10 Duration
execute if score songChoice temp matches 11 store result score @s remainingLength run data get storage music-11 Duration

execute if score songChoice temp matches 20 store result score @s remainingLength run data get storage music-20 Duration
execute if score songChoice temp matches 21 store result score @s remainingLength run data get storage music-21 Duration
execute if score songChoice temp matches 22 store result score @s remainingLength run data get storage music-22 Duration

execute if score songChoice temp matches 0 run playsound custom.music.fight.idk1 record @s
execute if score songChoice temp matches 1 run playsound custom.music.fight.idk4 record @s
execute if score songChoice temp matches 2 run playsound custom.music.fight.idk5 record @s
execute if score songChoice temp matches 3 run playsound custom.music.fight.idk6 record @s
execute if score songChoice temp matches 4 run playsound custom.music.fight.idk12 record @s
execute if score songChoice temp matches 5 run playsound custom.music.fight.idk14 record @s

execute if score songChoice temp matches 10 run playsound custom.music.fight.ultrakill1 record @s
execute if score songChoice temp matches 11 run playsound custom.music.fight.ultrakill2 record @s

execute if score songChoice temp matches 20 run playsound custom.music.fight.jungle1 record @s ~ ~ ~ 0.5
execute if score songChoice temp matches 21 run playsound custom.music.fight.jungle2 record @s ~ ~ ~ 0.5
execute if score songChoice temp matches 22 run playsound custom.music.fight.jungle3 record @s ~ ~ ~ 0.7

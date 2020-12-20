# Call at end of gamemode-specific end function, and tag all winners with the 'winner' tag

scoreboard objectives remove gm.kills
scoreboard objectives remove gm.deaths
scoreboard objectives remove gm.general

scoreboard players set gamemodeActive info 0
# Tet remove ability stuff here

scoreboard players add @a[tag=winner] wins 1
tellraw @a[tag=inGame] [{"selector": "@a[tag=winner]","color": "gold"}, " has Won!"]
execute as @a[tag=winner] at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1
tag @a[tag=winner] remove winner

execute as @a[tag=inGame] at @s run playsound entity.firework_rocket.launch master @s ~ ~ ~ 1 1 1

team leave @a[tag=inGame]
tp @a[tag=inGame] 10000 64 0

tag @a[tag=inGame] remove inGame

# Call at end of gamemode-specific end function, and tag all winners with the 'winner' tag

scoreboard objectives remove gm.kills
scoreboard objectives remove gm.deaths
scoreboard objectives remove gm.general

scoreboard players set gamemodeActive info 0

bossbar set gm.bossbar players

scoreboard players add @a[tag=winner] wins 1
tellraw @a[tag=inGame] [{"selector": "@a[tag=winner]","color": "gold"}, " has Won!"]
execute as @a[tag=winner] run playsound ui.toast.challenge_complete master @s 0 0 0 1 1 1
tag @a[tag=winner] remove winner

execute as @a[tag=inGame] run playsound entity.firework_rocket.launch master @s 0 0 0 1 1 1

execute as @a[tag=respawning] run function kitpvp:gamemode/private/end-respawn

team leave @a[tag=inGame]
execute as @a[tag=inGame] run function kitpvp:loadout/revoke-items
execute as @a[tag=inGame] run function kitpvp:generic/coordinates/tp-spawn

execute as @a[tag=inGame] run function kitpvp:interface/menus/main-menu/disable
execute as @a[scores={ready=1}] run function kitpvp:interface/menus/give/main-menu-display

tag @a[tag=inGame] remove inGame

time set 6000
weather clear

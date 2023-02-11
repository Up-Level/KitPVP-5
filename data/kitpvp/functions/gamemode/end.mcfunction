# Call at end of gamemode-specific end function, and tag all winners with the 'winner' tag

scoreboard players set gamemodeActive info 0

scoreboard objectives remove gm.kills
scoreboard objectives remove gm.deaths
scoreboard objectives remove gm.general
scoreboard objectives remove gm.sidebar

scoreboard objectives setdisplay sidebar ready
scoreboard objectives setdisplay list wins

bossbar set gm.bossbar players

scoreboard players set @a[tag=inGame,scores={musicCategory=1..}] remainingLength -20
stopsound @a[tag=inGame]

execute as @a[tag=inGame] run function kitpvp:entity/player/external/destroy-all-end-round
execute as @a[tag=inGame] run function kitpvp:entity/player/external/destroy-all-end-game

scoreboard players add @a[tag=winner] wins 1
execute as @a[tag=winner] run playsound ui.toast.challenge_complete master @s 0 0 0 1 1 1
tag @a[tag=winner] remove winner

execute as @a[tag=inGame] run playsound entity.firework_rocket.launch master @s 0 0 0 1 1 1

team leave @a[tag=inGame,team=none]
execute as @a[tag=inGame] run function kitpvp:loadout/equip/revoke-items
execute as @a[tag=inGame] run function kitpvp:generic/coordinates/tp-spawn

execute as @a[tag=inGame] run function kitpvp:interface/menus/main-menu/disable
execute as @a[tag=inGame] run function kitpvp:interface/menus/give/main-menu-display

clear @a[tag=inGame] cooked_beef

tag @a[tag=inGame] remove inGame
tag @a[tag=respawning] remove respawning

time set 6000
weather clear

function kitpvp:map/fetch-map-info
function kitpvp:gamemode/fetch-gamemode-info

tag @a[scores={readyDisplay=1}] add inGame

title @a title "Go!"
execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

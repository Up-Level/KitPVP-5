execute as @a run function kitpvp:loadout/equip/revoke-items
execute as @a run function kitpvp:loadout/edit/edit/revoke-edit

execute as @a run function kitpvp:entity/player/external/destroy-all

execute as @a run function kitpvp:generic/clear-player

kill @e[tag=playerEntity]

# I honestly don't know why it doesnt remove loadout items, they should still have the relevant scoreboards at this point

function kitpvp:gamemode/force-end

scoreboard objectives add config dummy

# Declarations for vscode
#declare score_holder gamemode
#declare score_holder map
#declare score_holder startingGamemode
#declare score_holder gamemodeSupported
#declare score_holder gamemodeActive
#declare score_holder playersReady

scoreboard objectives remove info
scoreboard objectives add info dummy
scoreboard players set gamemode info 0
scoreboard players set map info 0
scoreboard players set gamemodeSupported info 0
scoreboard players set gamemodeActive info 0
scoreboard players set playersReady info 0

scoreboard objectives remove temp

scoreboard objectives remove temp
scoreboard objectives add temp dummy

scoreboard objectives remove ready
scoreboard objectives add ready dummy {"text":"Ready","color":"gold"}
scoreboard objectives setdisplay sidebar ready

scoreboard objectives remove inMenu
scoreboard objectives add inMenu dummy

scoreboard objectives remove menuTriggers
scoreboard objectives add menuTriggers trigger

scoreboard objectives remove abilityData
scoreboard objectives add abilityData dummy

scoreboard objectives remove idCounter
scoreboard objectives add idCounter dummy

scoreboard objectives setdisplay list wins

function kitpvp:base/load/teams-setup
function kitpvp:base/load/scoreboard-setup
function kitpvp:base/load/storage-setup

schedule function kitpvp:base/tick/tick-per-sec 1s
schedule function kitpvp:base/tick/tick-per-min 60s

scoreboard players set @a bin.join 1

tellraw @a {"text":"KitPVP Datapack Reloaded.","color":"gold"}
stopsound @a
execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1 1

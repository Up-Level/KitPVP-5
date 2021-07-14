execute as @a run function kitpvp:loadout/revoke-items
execute as @a run function kitpvp:loadout/edit/edit/revoke-edit
# I honestly don't know why it doesnt remove loadout items, they should still have the relevant scoreboards at this point

scoreboard objectives add config dummy

# Declarations for vscode
#declare score_holder gamemode
#declare score_holder map
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
scoreboard objectives add temp dummy

scoreboard objectives remove ready
scoreboard objectives add ready dummy {"text":"Ready","color":"gold"}
scoreboard objectives setdisplay sidebar ready

scoreboard objectives remove inMenu
scoreboard objectives add inMenu dummy

scoreboard objectives remove menuTriggers
scoreboard objectives add menuTriggers trigger

scoreboard objectives remove itemData
scoreboard objectives add itemData dummy

scoreboard objectives setdisplay list wins

function kitpvp:base/load/teams-setup
function kitpvp:base/load/scoreboard-setup
function kitpvp:base/load/storage-setup

schedule function kitpvp:tick-per-sec 1s
schedule function kitpvp:tick-per-min 60s

tellraw @a {"text":"KitPVP Datapack Reloaded.","color":"gold"}
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1 1
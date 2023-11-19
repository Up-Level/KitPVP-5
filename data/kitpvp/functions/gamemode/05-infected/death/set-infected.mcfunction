tellraw @a[tag=inGame] [{"selector":"@s","color":"red"}," has been ", {"text": "Infected","color":"green"}, {"text": "!","color": "red"}]
execute at @s run playsound ambient.cave player @a[tag=inGame] ~ ~ ~ 1 0.8 1

team join green @s
function kitpvp:loadout/equip/revoke-items
execute if entity @s[tag=!firstInfected] run function kitpvp:loadout/equip/preset/grant-items-infected
execute if entity @s[tag=firstInfected] run function kitpvp:loadout/equip/preset/grant-items-infected-prime

execute if entity @s[tag=!firstInfected] run function kitpvp:entity/player/custom/012-kit-tracker/get
tp @s[tag=!firstInfected] @e[limit=1,tag=found]

scoreboard players set @s bin.deadGamemode 0

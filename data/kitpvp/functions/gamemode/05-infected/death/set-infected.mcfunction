tellraw @a[tag=inGame] [{"selector":"@s","color":"red"}," has been ", {"text": "Infected","color":"green"}, {"text": "!","color": "red"}]
execute at @s run playsound entity.zombie.ambient player @a[tag=inGame] ~ ~ ~ 1 0.8 1

team join green @s
function kitpvp:loadout/revoke-items
execute if entity @s[tag=!firstInfected] run function kitpvp:loadout/grant-items-preset/grant-items-infected

tellraw @a [{"selector":"@s"},{"text":"'s coordinates are X:"},{"nbt":"Pos[0]","entity":"@s"},{"text":" Y:"},{"nbt":"Pos[1]","entity":"@s"},{"text":" Z:"},{"nbt":"Pos[2]","entity":"@s"}]

execute if entity @s[tag=!firstInfected] run function kitpvp:entity/player/custom/012-kit-tracker/get
tp @s[tag=!firstInfected] @e[limit=1,tag=found]

tellraw @a [{"selector":"@s"},{"text":"'s coordinates are X:"},{"nbt":"Pos[0]","entity":"@s"},{"text":" Y:"},{"nbt":"Pos[1]","entity":"@s"},{"text":" Z:"},{"nbt":"Pos[2]","entity":"@s"}]
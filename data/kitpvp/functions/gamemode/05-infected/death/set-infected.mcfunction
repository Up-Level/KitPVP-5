tellraw @a[tag=inGame] [{"selector":"@s","color":"red"}," has been ", {"text": "Infected","color":"green"}, {"text": "!","color": "red"}]
execute at @s run playsound entity.zombie.ambient player @a[tag=inGame] ~ ~ ~ 1 0.8 1

team join green @s
function kitpvp:gamemode/spawn

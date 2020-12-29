clear @s
effect clear @s
function kitpvp:loadouts/revoke-items

tellraw @a[tag=inGame] [{"selector":"@s","color":"red"},{"text":" has Died!","color":"red"}]
execute at @s run playsound entity.lightning_bolt.thunder player @a[tag=inGame] ~ ~ ~ 1 1 1

scoreboard players operation @s gm.respawn-timer = respawnTime config
tag @s add respawning

scoreboard players set @s dead 0

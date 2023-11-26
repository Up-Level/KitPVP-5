execute if score gamemodeActive info matches 0 run playsound minecraft:entity.player.burp master @a ~ ~ ~ 2 1
execute if score gamemodeActive info matches 0 run particle minecraft:angry_villager ~ ~1.75 ~ 0 0 0 0 1 force

execute if score gamemodeActive info matches 1 unless entity @s[tag=inGame] run playsound minecraft:entity.player.burp master @a ~ ~ ~ 2 1
execute if score gamemodeActive info matches 1 unless entity @s[tag=inGame] run particle minecraft:angry_villager ~ ~1.75 ~ 0 0 0 0 1 force


execute if score gamemodeActive info matches 1 if entity @s[tag=inGame] run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 2 1
execute if score gamemodeActive info matches 1 if entity @s[tag=inGame] run particle minecraft:reverse_portal ~ ~1 ~ .25 .5 .25 .05 100 force
execute if score gamemodeActive info matches 1 if entity @s[tag=inGame] run function kitpvp:abilities/internal/effects/014-respawn/respawn

function kitpvp:abilities/internal/spend

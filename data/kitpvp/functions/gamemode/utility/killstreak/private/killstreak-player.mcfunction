scoreboard players operation @s gm.killstreak += @s bin.kill
scoreboard players set @s gm.mkill-timer 200

execute if score @s gm.mkill matches 0 run scoreboard players set @s gm.mkill 1

execute if score @s gm.mkill matches ..1 if score @s gm.killstreak matches 3.. run tellraw @a[tag=inGame] [{"selector":"@s","color":"#ff0000"}, " is on a ", {"score":{"name": "@s", "objective": "gm.killstreak"}}, " player Killstreak!"]

execute if score @s gm.mkill matches ..1 if score @s gm.killstreak matches 3 run playsound minecraft:custom.announcer.killingspree.killingspree player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.mkill matches ..1 if score @s gm.killstreak matches 4 run playsound minecraft:custom.announcer.killingspree.rampage player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.mkill matches ..1 if score @s gm.killstreak matches 5 run playsound minecraft:custom.announcer.killingspree.dominating player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.mkill matches ..1 if score @s gm.killstreak matches 6 run playsound minecraft:custom.announcer.killingspree.unstoppable player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.mkill matches ..1 if score @s gm.killstreak matches 7 run playsound minecraft:custom.announcer.killingspree.godlike player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.mkill matches ..1 if score @s gm.killstreak matches 8.. run playsound minecraft:custom.announcer.killingspree.wickedsick player @a[tag=inGame] 0 0 0 0.25 1 0.25

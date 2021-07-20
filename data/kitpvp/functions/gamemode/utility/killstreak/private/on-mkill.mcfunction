execute if score @s gm.mkill matches 2.. run tellraw @a[tag=inGame] [{"selector":"@s","color":"#ff0000"}, " has killed ", {"score":{"name": "@s", "objective": "gm.mkill"}}, " in a row!"]

execute if score @s gm.mkill matches 2 run playsound minecraft:custom.announcer.multikill.doublekill player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.mkill matches 3 run playsound minecraft:custom.announcer.multikill.multikill player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.mkill matches 4 run playsound minecraft:custom.announcer.multikill.megakill player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.mkill matches 5 run playsound minecraft:custom.announcer.multikill.ultrakill player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.mkill matches 6 run playsound minecraft:custom.announcer.multikill.monsterkill player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.mkill matches 7 run playsound minecraft:custom.announcer.multikill.ludicrouskill player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.mkill matches 8 run playsound minecraft:custom.announcer.multikill.holyshit player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.mkill matches 9.. run playsound minecraft:music_disc.stal player @a[tag=inGame] 0 0 0 100 1 1

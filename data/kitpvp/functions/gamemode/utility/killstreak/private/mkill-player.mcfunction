scoreboard players remove @s gm.mkill-timer 1

execute if score @s bin.kill matches 1.. run scoreboard players operation @s gm.mkill += @s bin.kill
execute if score @s gm.mkill-timer matches ..0 run scoreboard players set @s gm.mkill 0

execute if score @s gm.mkill matches 2.. run tellraw @a[tag=inGame] [{"selector":"@s","color":"#ff0000"}, " has earned ", {"score":{"name": "@s", "objective": "gm.mkills"}}, " consecutive kills!"]

execute if score @s gm.mkill matches 2 run playsound minecraft:custom.announcer.multikill.doublekill player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.mkill matches 3 run playsound minecraft:custom.announcer.multikill.multikill player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.mkill matches 4 run playsound minecraft:custom.announcer.multikill.megakill player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.mkill matches 5 run playsound minecraft:custom.announcer.multikill.ultrakill player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.mkill matches 6 run playsound minecraft:custom.announcer.multikill.monsterkill player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.mkill matches 7 run playsound minecraft:custom.announcer.multikill.ludicrouskill player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.mkill matches 8 run playsound minecraft:custom.announcer.multikill.holyshit player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.mkill matches 9.. run playsound minecraft:music_disc.stal player @a[tag=inGame] 0 0 0 0.25 1 0.25

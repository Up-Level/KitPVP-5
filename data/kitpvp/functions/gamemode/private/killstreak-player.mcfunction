scoreboard players set @s bin.kill 0
scoreboard players operation @s gm.killstreak += #1 mathf.const

execute if score @s gm.killstreak matches 3.. run tellraw @a[tag=inGame] [{"selector":"@s","color":"#ff0000"}, " is on a ", {"score":{"name": "@s", "objective": "gm.killstreak"}}, " player Killstreak!"]

execute if score @s gm.killstreak matches 3 run playsound minecraft:custom.announcer.killingspree player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.killstreak matches 4 run playsound minecraft:custom.announcer.multikill player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.killstreak matches 5 run playsound minecraft:custom.announcer.rampage player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.killstreak matches 6 run playsound minecraft:custom.announcer.ultrakill player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.killstreak matches 7 run playsound minecraft:custom.announcer.unstoppable player @a[tag=inGame] 0 0 0 0.25 1 0.25
execute if score @s gm.killstreak matches 8.. run playsound minecraft:custom.announcer.monsterkill player @a[tag=inGame] 0 0 0 0.25 1 0.25

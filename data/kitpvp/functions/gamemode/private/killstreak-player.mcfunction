scoreboard players set @s bin.kill 0
scoreboard players operation @s gm.killstreak += #1 mathf.const

execute if score @s gm.killstreak matches 3.. run tellraw @a[tag=inGame] [{"selector":"@s","color":"#ff0000"}, " is on a ", {"score":{"name": "@s", "objective": "gm.killstreak"}}, " player Killstreak!"]

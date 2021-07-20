scoreboard objectives remove gm.killstreak
scoreboard objectives add gm.killstreak dummy

scoreboard objectives remove gm.mkill
scoreboard objectives add gm.mkill dummy
scoreboard players set @a[tag=inGame] gm.mkill 0

scoreboard objectives remove gm.mkill-timer
scoreboard objectives add gm.mkill-timer dummy

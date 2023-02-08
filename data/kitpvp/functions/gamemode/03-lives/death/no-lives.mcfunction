tellraw @a[tag=inGame] [{"selector":"@s","color":"red"},{"text":" has been Eliminated!","color":"red","bold": true}]
tp @s @a[tag=inGame,scores={gm.lives=1..},sort=random,limit=1]

scoreboard players set @s bin.deadGamemode 0

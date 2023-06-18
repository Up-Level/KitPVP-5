tag @s remove validSpawn

tag @s add mathf.entity0
tag @a[limit=1,sort=nearest,tag=inGame,tag=!respawning,gamemode=!spectator] add mathf.entity1

function mathf:minecraft/sqr-dist-between-entities

execute if score o0 mathf.io > sqrSpawnDistance config run tag @s add validSpawn

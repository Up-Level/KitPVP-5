execute unless score @s a.0 matches ..0 run scoreboard players remove @s a.0 1
execute unless score @s a.1 matches ..0 run scoreboard players remove @s a.1 1

# Funny Sounds

execute if score @s bin.damageTaken matches 1.. if score @s a.0 matches ..0 at @s positioned ~ ~1 ~ run playsound minecraft:entity.warden.hurt hostile @a ~ ~ ~ 1.25 1
execute if score @s bin.damageTaken matches 1.. if score @s a.0 matches ..0 run scoreboard players set @s a.0 9

execute if predicate utilities:is_sneaking if score @s a.0 matches ..0 if entity @s[x_rotation=80..100] at @s positioned ~ ~1 ~ run playsound minecraft:entity.warden.sniff hostile @a ~ ~ ~ 3
execute if predicate utilities:is_sneaking if score @s a.0 matches ..0 if entity @s[x_rotation=80..100] run scoreboard players set @s a.0 40

# Radar

execute if predicate utilities:is_sneaking run function kitpvp:generic/info/get-enemy

execute unless predicate utilities:is_sneaking run scoreboard players set @s a.1 0

execute if predicate utilities:is_sneaking if entity @e[limit=1,tag=found.enemy] if score @s a.1 matches 1 at @s positioned ~ ~1 ~ run playsound minecraft:entity.warden.tendril_clicks master @s ~ ~ ~ 1
#execute if predicate utilities:is_sneaking unless entity @e[limit=1,tag=found.enemy] if score @s a.1 matches 1 at @s positioned ~ ~1 ~ run playsound

execute if predicate utilities:is_sneaking if score @s a.1 matches ..0 at @s if entity @e[limit=1,sort=nearest,distance=..5,tag=found.enemy] run scoreboard players set @s a.1 15
execute if predicate utilities:is_sneaking if score @s a.1 matches 20.. at @s if entity @e[limit=1,sort=nearest,distance=..5,tag=found.enemy] run scoreboard players set @s a.1 15

execute if predicate utilities:is_sneaking if score @s a.1 matches ..0 at @s if entity @e[limit=1,sort=nearest,distance=5..12.5,tag=found.enemy] run scoreboard players set @s a.1 20
execute if predicate utilities:is_sneaking if score @s a.1 matches 20.. at @s if entity @e[limit=1,sort=nearest,distance=5..12.5,tag=found.enemy] run scoreboard players set @s a.1 20

execute if predicate utilities:is_sneaking if score @s a.1 matches ..0 at @s if entity @e[limit=1,sort=nearest,distance=12.5..20,tag=found.enemy] run scoreboard players set @s a.1 40
execute if predicate utilities:is_sneaking if score @s a.1 matches 40.. at @s if entity @e[limit=1,sort=nearest,distance=12.5..20,tag=found.enemy] run scoreboard players set @s a.1 40

execute if predicate utilities:is_sneaking if score @s a.1 matches ..0 at @s if entity @e[limit=1,sort=nearest,distance=20..27.5,tag=found.enemy] run scoreboard players set @s a.1 60

execute if predicate utilities:is_sneaking if score @s a.1 matches ..0 at @s unless entity @e[tag=found.enemy] run scoreboard players set @s a.1 60


execute if score @s bin.dead matches 1 if score gamemodeActive info matches 0 run function kitpvp:entity/player/custom/012-kit-tracker/get
execute if score @s bin.dead matches 1 if score gamemodeActive info matches 0 at @e[limit=1,tag=found] run function kitpvp:entity/player/custom/013-warden/create
tag @s add playerEntity

scoreboard players set @s entity.type 0
scoreboard players set @s entity.state 0
scoreboard players set @s entity.data 0
scoreboard players set @s entity.time 0

execute if entity @s[type=arrow] run scoreboard players set @s entity.type -1
execute if entity @s[type=spectral_arrow] run scoreboard players set @s entity.type -2
execute if entity @s[type=item] run scoreboard players set @s entity.type -3
execute if entity @s[type=trident] run scoreboard players set @s entity.type -4

function kitpvp:entity/player/internal/generic-start

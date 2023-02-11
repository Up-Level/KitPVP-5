execute if entity @s[team=red] run function kitpvp:entity/player/custom/014-banner/color/red/1
execute if entity @s[team=green] run function kitpvp:entity/player/custom/014-banner/color/green/1
execute if entity @s[team=blue] run function kitpvp:entity/player/custom/014-banner/color/blue/1
execute if entity @s[team=yellow] run function kitpvp:entity/player/custom/014-banner/color/yellow/1


execute if entity @s[team=none] run function kitpvp:entity/player/custom/014-banner/color/white/1
execute if entity @s[team=] run function kitpvp:entity/player/custom/014-banner/color/white/1


scoreboard players set @e[tag=temp] entity.type 14
scoreboard players set @e[tag=temp] entity.state 0
scoreboard players set @e[tag=temp] entity.data 0
scoreboard players set @e[tag=temp] entity.time 0

tag @s add uuid0
execute as @e[tag=temp] run function kitpvp:generic/uuid/set/owner-from-entity

tag @e remove temp

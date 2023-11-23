#execute as TetTheGreedy run function kitpvp:entity/player/custom/006-block-disguise/get
#execute as @e[tag=found] at TetTheGreedy align xz run tp @s ~.5 ~ ~.5

#execute as @e[tag=playerEntity,tag=blockVisual] run data modify entity @s BlockState.Name set value "minecraft:stone"
#tp @e[tag=blockPoint] 0 64 10000

execute if score @s entity.state matches 0 run function kitpvp:entity/player/internal/get-owner-this

execute if score @s entity.state matches 0 as @e[tag=found] run function kitpvp:generic/info/get-enemy
execute if score @s entity.state matches 0 if entity @e[distance=..1.5,tag=found.enemy] as @e[tag=found] run function kitpvp:abilities/internal/effects/010-block-disguise/undisguise

execute if score @s entity.state matches 0 as @e[tag=found] if predicate utilities:is_sprinting run function kitpvp:abilities/internal/effects/010-block-disguise/undisguise

execute if score @s entity.state matches 0 as @e[tag=found,limit=1] if score @s bin.damageTaken matches 1.. run function kitpvp:abilities/internal/effects/010-block-disguise/undisguise

execute if score @s entity.state matches 0 at @e[tag=found] align xz run tp @s ~.5 ~ ~.5

#execute as TetTheGreedy run function kitpvp:entity/player/006-block-disguise/get
#execute as @e[tag=found] at TetTheGreedy align xz run tp @s ~.5 ~ ~.5

#execute as @e[tag=playerEntity,tag=blockVisual] run data modify entity @s BlockState.Name set value "minecraft:stone"
#tp @e[tag=blockPoint] 0 64 10000

execute if score @s entity.state matches 0 run function kitpvp:entity/player/get-owner-this
execute at @e[tag=found] align xz run tp @s ~.5 ~ ~.5

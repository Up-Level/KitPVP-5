execute if score @s bin.kill matches 1.. at @s run function kitpvp:entity/player/011-wolf/create

execute if score @s bin.kill matches 1.. run function kitpvp:entity/player/011-wolf/get

execute if score @s bin.kill matches 1.. run effect give @e[tag=found] minecraft:regeneration 5 4
execute if score @s bin.kill matches 1.. at @e[tag=found] run playsound minecraft:entity.wolf.growl hostile @a

function kitpvp:generic/info/get-enemy

tag @e remove target
execute at @s run tag @e[limit=1,tag=found.enemy,distance=..10,sort=nearest] add target

# say I am angry at @e[tag=target]
execute if entity @e[tag=target,limit=1] as @e[tag=found] run data modify entity @s AngryAt set from entity @e[tag=target,limit=1] UUID
execute if entity @e[tag=target,limit=1] as @e[tag=found] run data modify entity @s AngerTime set value 200

#execute unless entity @e[tag=target,limit=1] as @e[tag=found] run data modify entity @s AngryAt set from entity @s UUID
#execute unless entity @e[tag=target,limit=1] as @e[tag=found] run data modify entity @s AngerTime set value 0
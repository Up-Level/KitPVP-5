execute if score @s bin.kill matches 1.. at @s run function kitpvp:entity/player/011-wolf/create

execute if score @s bin.kill matches 1.. run function kitpvp:entity/player/011-wolf/get

execute if score @s bin.kill matches 1.. run effect give @e[tag=found] minecraft:regeneration 5 4
execute if score @s bin.kill matches 1.. at @e[tag=found] run playsound minecraft:entity.wolf.growl hostile @a
execute at @s run function kitpvp:generic/info/touching-wall

effect clear @s minecraft:levitation
effect clear @s minecraft:slow_falling
execute if score @s bin.wall matches 1 if entity @s[x_rotation=-95..-25] if entity @s[nbt={OnGround:0b}] run effect give @s minecraft:levitation 1 3 true
execute if score @s bin.wall matches 1 if entity @s[nbt={OnGround:0b}] run effect give @s minecraft:slow_falling 1 0 true

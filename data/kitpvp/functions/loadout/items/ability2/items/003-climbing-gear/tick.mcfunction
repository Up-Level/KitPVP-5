function kitpvp:generic/info/touching-wall

effect clear @s minecraft:levitation
execute if score @s touchingWall matches 1 if entity @s[x_rotation=-95..-60] run effect give @s minecraft:levitation 1 0 true
execute if score @s touchingWall matches 1 if score @s crouch matches 1 run effect give @s minecraft:levitation 1 255 true

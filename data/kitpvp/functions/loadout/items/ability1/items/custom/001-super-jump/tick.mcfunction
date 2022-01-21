# Use a1.Mode scoreboard cuz we don't use it for enything else in this ability and I need a scoreboard
execute if predicate utilities:is_sneaking run scoreboard players add @s a1.Mode 1
execute unless predicate utilities:is_sneaking run scoreboard players set @s a1.Mode 0

# Reset if grounded but stupid there is no predicate for being grounded unless its for a spesific block >:L
execute if score @s a1.Mode matches 1.. if entity @s[nbt={OnGround:0b}] run scoreboard players set @s a1.Mode 0

execute if score @s a1.Mode matches 20..39 run effect give @s minecraft:jump_boost 1 3 true
execute if score @s a1.Mode matches 20 at @s run particle minecraft:dust_color_transition 0 0.27058823529 0 1 1 1 0 ~ ~.25 ~ .75 .1 .75 0.05 40 force

execute if score @s a1.Mode matches 40..59 run effect give @s minecraft:jump_boost 1 7 true
execute if score @s a1.Mode matches 40 at @s run particle minecraft:dust_color_transition 0 0.27058823529 0 1 1 1 0 ~ ~.25 ~ .75 .1 .75 0.05 40 force

execute if score @s a1.Mode matches 60..79 run effect give @s minecraft:jump_boost 1 11 true
execute if score @s a1.Mode matches 60 at @s run particle minecraft:dust_color_transition 0 0.27058823529 0 1 1 1 0 ~ ~.25 ~ .75 .1 .75 0.05 40 force

execute if score @s a1.Mode matches 80..99 run effect give @s minecraft:jump_boost 1 15 true
execute if score @s a1.Mode matches 80 at @s run particle minecraft:dust_color_transition 0 0.27058823529 0 1 1 1 0 ~ ~.25 ~ .75 .1 .75 0.05 40 force

execute if score @s a1.Mode matches 100.. run effect give @s minecraft:jump_boost 1 19 true
execute if score @s a1.Mode matches 100 at @s run particle minecraft:dust_color_transition 0 0.27058823529 0 1 1 1 0 ~ ~.25 ~ .75 .1 .75 0.05 40 force

execute if score @s a1.Mode matches 0 run effect clear @s jump_boost

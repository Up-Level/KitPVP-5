function kitpvp:entity/player/006-block-disguise/destroy
effect clear @s minecraft:invisibility
execute if score @s l.give matches 1 run function kitpvp:loadout/items/armor/give

execute at @s run particle minecraft:dust_color_transition 1 1 1 1 .5 .5 .5 ~ ~1 ~ .4 .5 .4 0 300 force
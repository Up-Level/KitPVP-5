function kitpvp:entity/player/006-block-disguise/destroy
effect clear @s minecraft:invisibility
execute if score @s l.give matches 1 run function kitpvp:loadout/items/armor/give
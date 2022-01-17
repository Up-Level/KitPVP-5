function kitpvp:entity/player/006-block-disguise/create
effect give @s invisibility 999999 0 true
execute if score @s l.give matches 1 run function kitpvp:loadout/items/armor/clear
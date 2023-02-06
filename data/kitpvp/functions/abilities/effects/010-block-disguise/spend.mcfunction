execute at @s positioned ~ ~-1 ~ run function kitpvp:generic/copy-block-to-storage

function kitpvp:entity/player/custom/006-block-disguise/create
effect give @s invisibility 999999 0 true
execute if score @s l.give matches 1 run function kitpvp:loadout/items/armor/clear

execute at @s run particle minecraft:dust_color_transition 1 1 1 1 .5 .5 .5 ~ ~1 ~ .4 .5 .4 0 300 force

function kitpvp:abilities/spend
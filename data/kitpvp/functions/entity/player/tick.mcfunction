execute if score @s entity.type matches 1 at @s run function kitpvp:entity/player/001-tp/tick
execute if score @s entity.type matches 2 at @s run function kitpvp:entity/player/002-block/tick
execute if score @s entity.type matches 3 at @s run function kitpvp:entity/player/003-mine/tick
execute if score @s entity.type matches 4 at @s run function kitpvp:entity/player/004-explosion/tick
execute if score @s entity.type matches 5 at @s run function kitpvp:entity/player/005-smoke-bomb/tick
execute if score @s entity.type matches 6 at @s run function kitpvp:entity/player/006-block-disguise/tick
#execute if score @s entity.type matches 7 at @s run function kitpvp:entity/player/007-horse/tick
#execute if score @s entity.type matches 8 at @s run function kitpvp:entity/player/008-fireball/tick
#execute if score @s entity.type matches 9 at @s run function kitpvp:entity/player/009-fang/tick
execute if score @s entity.type matches 10 at @s run function kitpvp:entity/player/010-shield/tick

execute if score @s entity.type matches -1 at @s run function kitpvp:entity/player/generic/001-arrow/tick
execute if score @s entity.type matches -2 at @s run function kitpvp:entity/player/generic/002-spectral-arrow/tick
execute if score @s entity.type matches -3 at @s run function kitpvp:entity/player/generic/003-item/tick
execute if score @s entity.type matches -4 at @s run function kitpvp:entity/player/generic/004-trident/tick
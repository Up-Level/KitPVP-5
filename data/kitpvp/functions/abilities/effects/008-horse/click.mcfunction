execute if score @s bin.sneak matches 1 run function kitpvp:entity/player/007-horse/destroy
execute if score @s bin.sneak matches 0 if score success itemData matches 1 run function kitpvp:abilities/effects/008-horse/spend

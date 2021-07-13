
function kitpvp:entity/player/001-tp/get

execute if score bin.sneak itemData matches 1 run function kitpvp:entity/player/001-tp/destroy

execute unless entity @e[tag=found] if score bin.sneak itemData matches 0 run function kitpvp:entity/player/001-tp/create

execute if entity @e[tag=found] if score bin.sneak itemData matches 0 if score success itemData matches 1 run function kitpvp:abilities/effects/005-tp/spend

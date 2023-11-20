
function kitpvp:entity/player/custom/001-tp/get

execute if score Sneaking itemData matches 1 run function kitpvp:entity/player/custom/001-tp/destroy

execute unless entity @e[tag=found] if score Sneaking itemData matches 0 run function kitpvp:entity/player/custom/001-tp/create

execute if entity @e[tag=found] if score Sneaking itemData matches 0 if score Success itemData matches 1 run function kitpvp:abilities/effects/005-tp/spend

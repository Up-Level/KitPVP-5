
function kitpvp:entity/player-entities/001-tp/get

execute if score crouch itemData matches 1 run function kitpvp:entity/player-entities/001-tp/destroy

execute unless entity @e[tag=found] if score crouch itemData matches 0 run function kitpvp:entity/player-entities/001-tp/create

execute if score success itemData matches 1 run function kitpvp:abilities/effects/005-tp/spend

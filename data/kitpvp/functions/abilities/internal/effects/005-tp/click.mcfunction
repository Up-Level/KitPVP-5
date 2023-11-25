
function kitpvp:entity/player/custom/001-tp/get

execute if score Sneaking abilityData matches 1 run function kitpvp:entity/player/custom/001-tp/destroy

execute unless entity @e[tag=found] if score Sneaking abilityData matches 0 run function kitpvp:entity/player/custom/001-tp/create

execute if entity @e[tag=found] if score Sneaking abilityData matches 0 if score canSpend abilityData matches 1 run function kitpvp:abilities/internal/effects/005-tp/spend

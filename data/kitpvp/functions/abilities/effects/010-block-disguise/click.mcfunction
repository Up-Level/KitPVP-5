function kitpvp:entity/player/custom/006-block-disguise/get
execute if score Success itemData matches 1 unless entity @e[tag=found] unless predicate utilities:is_sprinting run function kitpvp:abilities/effects/010-block-disguise/spend
execute if entity @e[tag=found] run function kitpvp:abilities/effects/010-block-disguise/undisguise


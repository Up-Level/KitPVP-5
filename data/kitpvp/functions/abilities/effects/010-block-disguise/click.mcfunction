function kitpvp:entity/player/006-block-disguise/get
execute if entity @e[tag=found] run function kitpvp:abilities/effects/010-block-disguise/undisguise
execute if score success itemData matches 1 unless entity @e[tag=found] run function kitpvp:abilities/effects/010-block-disguise/spend

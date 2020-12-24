execute if entity @e[tag=found] if score crouch itemData matches 0 run tp @s @e[tag=found,limit=1,sort=nearest]
execute if entity @e[tag=found] if score crouch itemData matches 0 run function kitpvp:entity/player-entities/001-tp/destroy

function kitpvp:abilities/spend

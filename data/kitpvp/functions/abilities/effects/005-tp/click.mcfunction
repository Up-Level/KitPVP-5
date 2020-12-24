
function kitpvp:entity/player-entities/001-tp/find

execute if score crouch itemData matches 1 run function kitpvp:entity/player-entities/001-tp/destroy

execute unless entity @e[tag=found] if score crouch itemData matches 0 run function kitpvp:entity/player-entities/001-tp/create

execute if entity @e[tag=found] if score crouch itemData matches 0 run tp @s @e[tag=found,limit=1,sort=nearest]
execute if entity @e[tag=found] if score crouch itemData matches 0 run function kitpvp:entity/player-entities/001-tp/destroy

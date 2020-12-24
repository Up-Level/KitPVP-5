
function kitpvp:abilities/effects/004-switch/mode/0
execute if score crouch itemData matches 0 run function kitpvp:entity/player-entities/001-tp/create
execute if score crouch itemData matches 0 run function kitpvp:entity/player-entities/001-tp/destroy

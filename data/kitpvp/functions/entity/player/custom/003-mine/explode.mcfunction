execute as @e[tag=found.enemy,distance=..3] run function kitpvp:entity/player/custom/003-mine/effects

execute as @e[tag=found] run function kitpvp:entity/player/custom/004-explosion/create

function kitpvp:entity/player/internal/destroy
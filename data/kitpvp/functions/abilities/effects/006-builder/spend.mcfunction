scoreboard players set @s blockTime 100
execute if score @s crouch matches 0 run function kitpvp:entity/player-entities/002-block/formations/path
execute if score @s crouch matches 1 run function kitpvp:entity/player-entities/002-block/formations/wall
function kitpvp:abilities/spend

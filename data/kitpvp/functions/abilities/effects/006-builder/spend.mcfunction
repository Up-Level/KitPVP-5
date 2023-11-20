scoreboard players set @s blockTime 100
execute if score Sneaking abilityData matches 0 run function kitpvp:entity/player/custom/002-block/formations/path
execute if score Sneaking abilityData matches 1 run function kitpvp:entity/player/custom/002-block/formations/wall
function kitpvp:abilities/spend

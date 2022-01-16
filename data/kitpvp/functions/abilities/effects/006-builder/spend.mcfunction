scoreboard players set @s blockTime 100
execute if score bin.sneak itemData matches 0 run function kitpvp:entity/player/002-block/formations/path
execute if score bin.sneak itemData matches 1 run function kitpvp:entity/player/002-block/formations/wall
function kitpvp:abilities/spend

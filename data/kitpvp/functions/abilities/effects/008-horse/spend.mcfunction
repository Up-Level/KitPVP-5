execute if score @s crouch matches 0 run function kitpvp:entity/player/007-horse/destroy
execute if score @s crouch matches 0 positioned ~ ~ ~ run function kitpvp:entity/player/007-horse/create
execute if score @s crouch matches 0 run playsound minecraft:custom.whistle player @a ~ ~ ~ 1
function kitpvp:abilities/spend

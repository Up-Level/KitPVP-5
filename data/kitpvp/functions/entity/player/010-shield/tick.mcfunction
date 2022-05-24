
function kitpvp:entity/player/get-owner-this

#execute if score @s entity.state matches 0 at @e[tag=found] rotated ~ 0 run tp @s ^ ^ ^-1.5

execute if score @s entity.state matches 1 at @e[tag=found] rotated ~ 0 run tp @s ^.675 ^ ^-1

execute if score @s entity.state matches 2 at @e[tag=found] rotated ~ 0 run tp @s ^-.675 ^ ^-1

execute at @s facing entity @e[tag=found] eyes run tp @s ~ ~ ~ ~ ~
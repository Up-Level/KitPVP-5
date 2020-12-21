tp @s[tag=checked] @p

execute as @e[type=item,tag=!checked] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item,tag=!checked] run data modify entity @s PickupDelay set value 0
tag @e[type=item] add checked

tag @s[nbt={Item:{tag:{Tags:["Delete"]}}}] add delete
tag @s[nbt={Item:{tag:{Tags:["Bound"]}}}] add bound

execute at @s[tag=bound] run tp @s @p

data modify entity @s[tag=bound] Owner set from entity @s[tag=temp] Thrower
data modify entity @s[tag=bound] PickupDelay set value 0

execute if entity @s[tag=!delete] run function kitpvp:generic/uuid/get-thrower-uuid

kill @s[tag=delete]

tag @s remove delete
tag @s remove bound

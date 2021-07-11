kill @s[nbt={Item:{tag:{Tags:["Delete"]}}}]
tag @s[nbt={Item:{tag:{Tags:["Bound"]}}}] add temp

execute at @s[tag=temp] run tp @s @p

data modify entity @s[tag=temp] Owner set from entity @s[tag=temp] Thrower
data modify entity @s[tag=temp] PickupDelay set value 0

tag @s remove temp
tag @s add checked

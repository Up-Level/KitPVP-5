scoreboard players set @s a2.useCD 0

execute if score @s a2.CD matches -1 run scoreboard players set @s a2.CD 0
execute if score @s a2.CDCount matches -1 run scoreboard players operation @s a2.CDCount = @s a2.CD
execute if score @s a2.ChargeMax matches -1 run scoreboard players set @s a2.ChargeMax 0
execute if score @s a2.ChargeCount matches -1 run scoreboard players operation @s a2.ChargeCount = @s a2.ChargeMax
execute if score @s a2.Mode matches -1 run scoreboard players set @s a2.Mode 0

attribute @s minecraft:generic.movement_speed modifier add 9-9-6-9-9 "GloveSpeed" .10 multiply_base

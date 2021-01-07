scoreboard players set @s a1.useCD 0

execute if score @p a1.CD matches -1 run scoreboard players set @s a1.CD 0
execute if score @p a1.CDCount matches -1 run scoreboard players operation @s a1.CDCount = @s a1.CD
execute if score @p a1.ChargeMax matches -1 run scoreboard players set @s a1.ChargeMax 0
execute if score @p a1.ChargeCount matches -1 run scoreboard players operation @s a1.ChargeCount = @s a1.ChargeMax
execute if score @p a1.Mode matches -1 run scoreboard players set @s a1.Mode 0

item entity @s weapon.offhand replace minecraft:totem_of_undying{ability1:1b} 1

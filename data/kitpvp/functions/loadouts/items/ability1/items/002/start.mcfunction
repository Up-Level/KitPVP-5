execute if score @p a1.CD matches -1 run scoreboard players set @s a1.CD 60
execute if score @p a1.CDCount matches -1 run scoreboard players operation @s a1.CDCount = @s a1.CD
execute if score @p a1.ChargeMax matches -1 run scoreboard players set @s a1.ChargeMax 3
execute if score @p a1.ChargeCount matches -1 run scoreboard players operation @s a1.ChargeCount = @s a1.ChargeMax
execute if score @p a1.Mode matches -1 run scoreboard players set @s a1.Mode 0

give @s minecraft:carrot_on_a_stick{Unbreakable:1b,ability1:1b,type:1b,effect:4b} 1

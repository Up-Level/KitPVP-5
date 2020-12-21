function kitpvp:loadouts/items/ability2/generic-start

execute if score @p a2.CD matches -1 run scoreboard players set @s a2.CD 60
execute if score @p a2.CDCount matches -1 run scoreboard players set @s a2.CDCount 60
execute if score @p a2.ChargeMax matches -1 run scoreboard players set @s a2.ChargeMax 3
execute if score @p a2.ChargeCount matches -1 run scoreboard players operation @s a2.ChargeCount = @s a2.ChargeMax

item entity @s hotbar.2 replace minecraft:carrot_on_a_stick{Unbreakable:1b,ability2:1b,type:2b,effect:3b} 1

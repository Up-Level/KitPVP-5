scoreboard players set @s a2.useCD 1

execute if score @s a2.CD matches -1 run scoreboard players set @s a2.CD 180
execute if score @s a2.CDCount matches -1 run scoreboard players operation @s a2.CDCount = @s a2.CD
execute if score @s a2.ChargeMax matches -1 run scoreboard players set @s a2.ChargeMax 6
execute if score @s a2.ChargeCount matches -1 run scoreboard players operation @s a2.ChargeCount = @s a2.ChargeMax
execute if score @s a2.Mode matches -1 run scoreboard players set @s a2.Mode 0

give @s minecraft:carrot_on_a_stick{Unbreakable:1b,ItemType:"ability2",Tags:["Bound"],HideFlags:4,AbilitySlot:2b,AbilityEffect:6b,CustomModelData:20,display:{Name:'{"text":"Builders Blueprints","italic":"false"}', Lore:['{"text":"Use to build a path.","color":"gray","italic":"false"}','{"text":"Sneak+Use to build a wall.","color":"gray","italic":"false"}']}} 1

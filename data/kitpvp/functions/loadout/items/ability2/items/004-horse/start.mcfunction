scoreboard players set @s a2.useCD 1

execute if score @p a2.CD matches -1 run scoreboard players set @s a2.CD 1200
execute if score @p a2.CDCount matches -1 run scoreboard players operation @s a2.CDCount = @s a2.CD
execute if score @p a2.ChargeMax matches -1 run scoreboard players set @s a2.ChargeMax 1
execute if score @p a2.ChargeCount matches -1 run scoreboard players operation @s a2.ChargeCount = @s a2.ChargeMax
execute if score @p a2.Mode matches -1 run scoreboard players set @s a2.Mode 0

give @s minecraft:carrot_on_a_stick{Unbreakable:1b,ItemType:"ability2",Tags:["Bound"],HideFlags:4,AbilitySlot:2b,AbilityEffect:8b,CustomModelData:40,display:{Name:'{"text":"Horse Whistle","italic":"false"}', Lore:['{"text":"Use to summon a horse.","color":"gray","italic":"false"}','{"text":"Sneak+Use to return your horse.","color":"gray","italic":"false"}']}} 1

scoreboard players set @s a1.useCD 1

execute if score @s a1.CD matches -1 run scoreboard players set @s a1.CD 100
execute if score @s a1.CDCount matches -1 run scoreboard players operation @s a1.CDCount = @s a1.CD
execute if score @s a1.ChargeMax matches -1 run scoreboard players set @s a1.ChargeMax 1
execute if score @s a1.ChargeCount matches -1 run scoreboard players operation @s a1.ChargeCount = @s a1.ChargeMax
execute if score @s a1.Mode matches -1 run scoreboard players set @s a1.Mode 0

give @s minecraft:carrot_on_a_stick{Unbreakable:1b,ItemType:"ability1",Tags:["Bound"],HideFlags:4,AbilitySlot:1b,AbilityEffect:10b,CustomModelData:60,display:{Name:'{"text":"Block Disguise","italic":"false"}', Lore:['{"text":"Disguise as the block you are standing on.","color":"gray","italic":"false"}']}} 1
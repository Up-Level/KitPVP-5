scoreboard players set @s a1.useCD 1

execute if score @s a1.CD matches -1 run scoreboard players set @s a1.CD 360
execute if score @s a1.CDCount matches -1 run scoreboard players operation @s a1.CDCount = @s a1.CD
execute if score @s a1.ChargeMax matches -1 run scoreboard players set @s a1.ChargeMax 1
execute if score @s a1.ChargeCount matches -1 run scoreboard players operation @s a1.ChargeCount = @s a1.ChargeMax
execute if score @s a1.Mode matches -1 run scoreboard players set @s a1.Mode 0

scoreboard players set id temp 10
scoreboard players set icon temp 10

scoreboard players set manual temp 0

scoreboard players set cd.length temp 360
scoreboard players set cd.time temp 0

scoreboard players operation count.max temp = Charge.Max itemData
scoreboard players operation count.amount temp = Charge.Amount itemData

give @s minecraft:carrot_on_a_stick{Unbreakable:1b,ItemType:"ability1",Tags:["Bound"],HideFlags:4,AbilitySlot:1b,AbilityEffect:7b,CustomModelData:30,display:{Name:'{"text":"Smoke Bomb","italic":false}', Lore:['{"text":"Use to throw a smoke bomb.","color":"gray","italic":false}']}} 1
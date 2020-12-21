function kitpvp:loadouts/items/ability2/generic-start
execute if score @p ability2CD matches -1 run scoreboard players set @s ability2CD 20
item entity @s hotbar.1 replace minecraft:carrot_on_a_stick{Unbreakable:1b,ability2:1b,type:2b,effect:3b} 1

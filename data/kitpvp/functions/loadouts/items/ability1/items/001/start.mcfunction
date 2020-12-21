function kitpvp:loadouts/items/ability1/generic-start
execute if score @p ability1CD matches -1 run scoreboard players set @s ability1CD 60
item entity @s hotbar.1 replace minecraft:carrot_on_a_stick{Unbreakable:1b,ability1:1b,type:1b,effect:1b} 1

execute store result score effect itemData run data get entity @s SelectedItem.tag.effect
execute store result score type itemData run data get entity @s SelectedItem.tag.type

execute if score type itemData matches 1 run scoreboard players remove @s ability1ChargeC 1
execute if score type itemData matches 1 if score @s ability1Charge matches 0 run item entity @s weapon.mainhand replace air

execute if score type itemData matches 2 run scoreboard players remove @s ability2ChargeC 1
execute if score type itemData matches 2 if score @s ability2Charge matches 0 run item entity @s weapon.mainhand replace air

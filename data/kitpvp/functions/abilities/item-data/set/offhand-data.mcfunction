execute store result storage kitpvp:item-data item.tag.Special.Ability.Effect int 1 run scoreboard players get effect itemData

execute store result storage kitpvp:item-data item.tag.Special.Ability.CooldownLength int 1 run scoreboard players get cooldown.length itemData
execute store result storage kitpvp:item-data item.tag.Special.Ability.CooldownTime int 1 run scoreboard players get cooldown.time itemData

execute store result storage kitpvp:item-data item.tag.Special.Ability.ChargeMax int 1 run scoreboard players get charge.max itemData
execute store result storage kitpvp:item-data item.tag.Special.Ability.ChargeAmount int 1 run scoreboard players get charge.amount itemData

execute store result storage kitpvp:item-data item.tag.Special.Timestamp int 1 run scoreboard players get timestamp itemData

item modify entity @s weapon.offhand kitpvp:item-data-ability
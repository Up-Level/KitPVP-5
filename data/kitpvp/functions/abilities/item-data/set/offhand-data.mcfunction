execute store result storage kitpvp:item-data item.tag.Special.Ability.Effect int 1 run scoreboard players get Effect itemData

execute store result storage kitpvp:item-data item.tag.Special.Ability.CooldownLength int 1 run scoreboard players get CD.Max itemData
execute store result storage kitpvp:item-data item.tag.Special.Ability.CooldownTime int 1 run scoreboard players get CD.Amount itemData

execute store result storage kitpvp:item-data item.tag.Special.Ability.ChargeMax int 1 run scoreboard players get Charge.Max itemData
execute store result storage kitpvp:item-data item.tag.Special.Ability.ChargeAmount int 1 run scoreboard players get Charge.Amount itemData

execute store result storage kitpvp:item-data item.tag.Special.Timestamp int 1 run scoreboard players get newTimestamp itemData

item modify entity @s weapon.offhand kitpvp:item-data-ability

scoreboard players operation id temp = HudID itemData

scoreboard players set manual temp 0

scoreboard players operation cd.length temp = CD.Max itemData
scoreboard players operation cd.time temp = CD.Amount itemData

scoreboard players operation count.max temp = Charge.Max itemData
scoreboard players operation count.amount temp = Charge.Amount itemData

function kitpvp:abilities/hud-display/external/update
execute store result storage kitpvp:item-data abilityData.Effect int 1 run scoreboard players get effect itemData

execute store result storage kitpvp:item-data abilityData.CooldownLength int 1 run scoreboard players get cooldown.length itemData
execute store result storage kitpvp:item-data abilityData.CooldownTime int 1 run scoreboard players get cooldown.time itemData

execute store result storage kitpvp:item-data abilityData.ChargeMax int 1 run scoreboard players get charge.max itemData
execute store result storage kitpvp:item-data abilityData.ChargeAmount int 1 run scoreboard players get charge.amount itemData

execute store result storage kitpvp:item-data abilityData.Timestamp int 1 run scoreboard players get timestamp itemData

function kitpvp:abilities/item-data/set/data-macro with storage kitpvp:item-data

scoreboard players operation id temp = hudId itemData

scoreboard players set manual temp 0

scoreboard players operation cd.length temp = cooldown.length itemData
scoreboard players operation cd.time temp = cooldown.time itemData

scoreboard players operation count.max temp = charge.max itemData
scoreboard players operation count.amount temp = charge.amount itemData

function kitpvp:abilities/hud-display/external/update


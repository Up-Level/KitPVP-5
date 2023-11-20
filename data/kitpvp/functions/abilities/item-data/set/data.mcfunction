execute store result storage kitpvp:item-data abilityData.Effect int 1 run scoreboard players get Effect itemData

execute store result storage kitpvp:item-data abilityData.SpendType int 1 run scoreboard players get SpendType itemData

execute if score SpendType itemData matches 1 store result storage kitpvp:item-data abilityData.CD.Max int 1 run scoreboard players get CD.Max itemData
execute if score SpendType itemData matches 1 store result storage kitpvp:item-data abilityData.CD.Amount int 1 run scoreboard players get CD.Amount itemData

execute if score SpendType itemData matches 1 store result storage kitpvp:item-data abilityData.Charge.Max int 1 run scoreboard players get Charge.Max itemData
execute if score SpendType itemData matches 1 store result storage kitpvp:item-data abilityData.Charge.Amount int 1 run scoreboard players get Charge.Amount itemData

execute store result storage kitpvp:item-data abilityData.Timestamp int 1 run scoreboard players get Timestamp itemData

function kitpvp:abilities/item-data/set/data-macro with storage kitpvp:item-data

scoreboard players operation id temp = HudID itemData

scoreboard players set manual temp 0

scoreboard players operation cd.length temp = CD.Max itemData
scoreboard players operation cd.time temp = CD.Amount itemData

scoreboard players operation count.max temp = Charge.Max itemData
scoreboard players operation count.amount temp = Charge.Amount itemData

function kitpvp:abilities/hud-display/external/update


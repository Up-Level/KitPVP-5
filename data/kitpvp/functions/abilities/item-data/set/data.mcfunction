execute store result storage kitpvp:ability-data abilityData.Effect int 1 run scoreboard players get Effect abilityData

execute store result storage kitpvp:ability-data abilityData.SpendType int 1 run scoreboard players get SpendType abilityData

execute if score SpendType abilityData matches 1 store result storage kitpvp:ability-data abilityData.CD.Max int 1 run scoreboard players get CD.Max abilityData
execute if score SpendType abilityData matches 1 store result storage kitpvp:ability-data abilityData.CD.Amount int 1 run scoreboard players get CD.Amount abilityData

execute if score SpendType abilityData matches 1 store result storage kitpvp:ability-data abilityData.Charge.Max int 1 run scoreboard players get Charge.Max abilityData
execute if score SpendType abilityData matches 1 store result storage kitpvp:ability-data abilityData.Charge.Amount int 1 run scoreboard players get Charge.Amount abilityData

execute store result storage kitpvp:ability-data abilityData.Timestamp int 1 run scoreboard players get newTimestamp abilityData

function kitpvp:abilities/item-data/set/data-macro with storage kitpvp:ability-data

scoreboard players operation id temp = HudID abilityData

scoreboard players set manual temp 0

scoreboard players operation cd.length temp = CD.Max abilityData
scoreboard players operation cd.time temp = CD.Amount abilityData

scoreboard players operation count.max temp = Charge.Max abilityData
scoreboard players operation count.amount temp = Charge.Amount abilityData

function kitpvp:abilities/hud-display/external/update


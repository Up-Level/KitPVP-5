execute store result storage kitpvp:ability-data abilityData.Effect int 1 run scoreboard players get Effect abilityData

execute store result storage kitpvp:ability-data abilityData.Spend.Type int 1 run scoreboard players get Spend.Type abilityData

execute if score Spend.Type abilityData matches 1 store result storage kitpvp:ability-data abilityData.Spend.CD.Max int 1 run scoreboard players get Spend.CD.Max abilityData
execute if score Spend.Type abilityData matches 1 store result storage kitpvp:ability-data abilityData.Spend.CD.Amount int 1 run scoreboard players get Spend.CD.Amount abilityData

execute if score Spend.Type abilityData matches 1 store result storage kitpvp:ability-data abilityData.Spend.Charge.Max int 1 run scoreboard players get Spend.Charge.Max abilityData
execute if score Spend.Type abilityData matches 1 store result storage kitpvp:ability-data abilityData.Spend.Charge.Amount int 1 run scoreboard players get Spend.Charge.Amount abilityData

execute store result storage kitpvp:ability-data abilityData.Timestamp int 1 run scoreboard players get newTimestamp abilityData

function kitpvp:abilities/ability-data/set/data-macro with storage kitpvp:ability-data

scoreboard players operation id temp = HudID abilityData
scoreboard players set icon temp -1

scoreboard players set manual temp 0

execute if score Spend.Type abilityData matches 1 run scoreboard players operation cd.length temp = Spend.CD.Max abilityData
execute if score Spend.Type abilityData matches 1 run scoreboard players operation cd.time temp = Spend.CD.Amount abilityData

execute if score Spend.Type abilityData matches 1 run scoreboard players operation count.max temp = Spend.Charge.Max abilityData
execute if score Spend.Type abilityData matches 1 run scoreboard players operation count.amount temp = Spend.Charge.Amount abilityData

function kitpvp:abilities/hud-display/external/update


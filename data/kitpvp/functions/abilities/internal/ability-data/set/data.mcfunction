# Use
execute store result storage kitpvp:ability-data abilityData.Use.Type int 1 run scoreboard players get Use.Type abilityData

# Use(0) (Impusle)
execute if score Use.Type abilityData matches 0 store result storage kitpvp:ability-data abilityData.Use.Effect int 1 run scoreboard players get Use.Effect abilityData

# Use(1) (Channel)
execute if score Use.Type abilityData matches 1 store result storage kitpvp:ability-data abilityData.Use.FullEffect int 1 run scoreboard players get Use.FullEffect abilityData
execute if score Use.Type abilityData matches 1 store result storage kitpvp:ability-data abilityData.Use.Effect int 1 run scoreboard players get Use.Effect abilityData

execute if score Use.Type abilityData matches 1 store result storage kitpvp:ability-data abilityData.Use.CancelTime int 1 run scoreboard players get Use.CancelTime abilityData

execute if score Use.Type abilityData matches 1 store result storage kitpvp:ability-data abilityData.Use.Channel.Max int 1 run scoreboard players get Use.Channel.Max abilityData
execute if score Use.Type abilityData matches 1 store result storage kitpvp:ability-data abilityData.Use.Channel.Amount int 1 run scoreboard players get Use.Channel.Amount abilityData

# Spend
execute store result storage kitpvp:ability-data abilityData.Spend.Type int 1 run scoreboard players get Spend.Type abilityData

# Spend (CD-Charges)
execute if score Spend.Type abilityData matches 1 store result storage kitpvp:ability-data abilityData.Spend.CD.Max int 1 run scoreboard players get Spend.CD.Max abilityData
execute if score Spend.Type abilityData matches 1 store result storage kitpvp:ability-data abilityData.Spend.CD.Amount int 1 run scoreboard players get Spend.CD.Amount abilityData

execute if score Spend.Type abilityData matches 1 store result storage kitpvp:ability-data abilityData.Spend.Charge.Max int 1 run scoreboard players get Spend.Charge.Max abilityData
execute if score Spend.Type abilityData matches 1 store result storage kitpvp:ability-data abilityData.Spend.Charge.Amount int 1 run scoreboard players get Spend.Charge.Amount abilityData

execute store result storage kitpvp:ability-data abilityData.Timestamp int 1 run scoreboard players get newTimestamp abilityData

function kitpvp:abilities/internal/ability-data/set/data-macro with storage kitpvp:ability-data


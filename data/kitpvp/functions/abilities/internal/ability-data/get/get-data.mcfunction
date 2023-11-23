data remove storage kitpvp:ability-data abilityData
function kitpvp:abilities/internal/ability-data/get/get-data-macro with storage kitpvp:ability-data

# Generic 
execute store result score oldTimestamp abilityData run data get storage kitpvp:ability-data abilityData.Timestamp
execute store result score SoftCD abilityData run data get storage kitpvp:ability-data abilityData.SoftCD

execute store result score HudID abilityData run data get storage kitpvp:ability-data abilityData.HudId

# Use
execute store result score Use.Type abilityData run data get storage kitpvp:ability-data abilityData.Use.Type

# Use (Impusle)
execute if score Use.Type abilityData matches 0 store result score Use.Effect abilityData run data get storage kitpvp:ability-data abilityData.Use.Effect

# Spend
execute store result score Spend.Type abilityData run data get storage kitpvp:ability-data abilityData.Spend.Type

# Spend(0) (No Spending Checks)
# :D

# Spend(1) (CD/Charges)
execute if score Spend.Type abilityData matches 1 store result score Spend.CD.Max abilityData run data get storage kitpvp:ability-data abilityData.Spend.CD.Max
execute if score Spend.Type abilityData matches 1 store result score Spend.CD.Amount abilityData run data get storage kitpvp:ability-data abilityData.Spend.CD.Amount

execute if score Spend.Type abilityData matches 1 store result score Spend.Charge.Max abilityData run data get storage kitpvp:ability-data abilityData.Spend.Charge.Max
execute if score Spend.Type abilityData matches 1 store result score Spend.Charge.Amount abilityData run data get storage kitpvp:ability-data abilityData.Spend.Charge.Amount
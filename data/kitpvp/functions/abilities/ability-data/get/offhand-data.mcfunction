data remove storage kitpvp:ability-data Id
data remove storage kitpvp:ability-data abilityData

data modify storage kitpvp:ability-data Id set from entity @s Inventory[{Slot:-106b}].tag.Special.AbilityId

execute if data storage kitpvp:ability-data Id run scoreboard players set Valid abilityData 1

execute if score Valid abilityData matches 0 run return 0

function kitpvp:abilities/ability-data/get/data-macro with storage kitpvp:ability-data

#execute unless data storage kitpvp:ability-data abilityData.Use.Effect run scoreboard players set Valid abilityData 0

#execute if score Valid abilityData matches 0 run return 0

# Use type
execute store result score Use.Type abilityData run data get storage kitpvp:ability-data abilityData.Use.Type

execute if score Use.Type abilityData matches 0 store result score Use.Use.Effect abilityData run data get storage kitpvp:ability-data abilityData.Use.Effect

# Spend type
execute store result score Spend.Type abilityData run data get storage kitpvp:ability-data abilityData.Spend.Type

execute if score Spend.Type abilityData matches 1 store result score Spend.CD.Max abilityData run data get storage kitpvp:ability-data abilityData.Spend.CD.Max
execute if score Spend.Type abilityData matches 1 store result score Spend.CD.Amount abilityData run data get storage kitpvp:ability-data abilityData.Spend.CD.Amount

execute if score Spend.Type abilityData matches 1 store result score Spend.Charge.Max abilityData run data get storage kitpvp:ability-data abilityData.Spend.Charge.Max
execute if score Spend.Type abilityData matches 1 store result score Spend.Charge.Amount abilityData run data get storage kitpvp:ability-data abilityData.Spend.Charge.Amount

execute store result score oldTimestamp abilityData run data get storage kitpvp:ability-data abilityData.Timestamp

execute store result score HudID abilityData run data get storage kitpvp:ability-data abilityData.HudId
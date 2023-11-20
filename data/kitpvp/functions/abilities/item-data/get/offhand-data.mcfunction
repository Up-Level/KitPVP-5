data remove storage kitpvp:ability-data Id
data remove storage kitpvp:ability-data abiltiyData

data modify storage kitpvp:ability-data Id set from entity @s Inventory[{Slot:-106b}].tag.Special.AbilityId

execute if data storage kitpvp:ability-data Id run scoreboard players set Valid abilityData 1

execute if score Valid abilityData matches 0 run return 0

function kitpvp:abilities/item-data/get/data-macro with storage kitpvp:ability-data

execute unless data storage kitpvp:ability-data abilityData.Effect run scoreboard players set Valid abilityData 0

execute if score Valid abilityData matches 0 run return 0

execute store result score Effect abilityData run data get storage kitpvp:ability-data abilityData.Effect


execute store result score SpendType abilityData run data get storage kitpvp:ability-data abilityData.SpendType

execute if score SpendType abilityData matches 1 store result score CD.Max abilityData run data get storage kitpvp:ability-data abilityData.CD.Max
execute if score SpendType abilityData matches 1 store result score CD.Amount abilityData run data get storage kitpvp:ability-data abilityData.CD.Amount

execute if score SpendType abilityData matches 1 store result score Charge.Max abilityData run data get storage kitpvp:ability-data abilityData.Charge.Max
execute if score SpendType abilityData matches 1 store result score Charge.Amount abilityData run data get storage kitpvp:ability-data abilityData.Charge.Amount

execute store result score oldTimestamp abilityData run data get storage kitpvp:ability-data abilityData.Timestamp

execute store result score HudID abilityData run data get storage kitpvp:ability-data abilityData.HudId
execute store success score Valid abilityData run data modify storage kitpvp:ability-data Id set from entity @s SelectedItem.tag.Special.AbilityId

execute if score Valid abilityData matches 1 run function kitpvp:abilities/item-data/get/data-macro with storage kitpvp:ability-data

execute if score Valid abilityData matches 1 unless data storage kitpvp:ability-data abilityData.Effect run scoreboard players set Valid abilityData 0

execute if score Valid abilityData matches 1 store result score Effect abilityData run data get storage kitpvp:ability-data abilityData.Effect


execute if score Valid abilityData matches 1 store result score SpendType abilityData run data get storage kitpvp:ability-data abilityData.SpendType

execute if score Valid abilityData matches 1 if score SpendType abilityData matches 1 store result score CD.Max abilityData run data get storage kitpvp:ability-data abilityData.CD.Max
execute if score Valid abilityData matches 1 if score SpendType abilityData matches 1 store result score CD.Amount abilityData run data get storage kitpvp:ability-data abilityData.CD.Amount

execute if score Valid abilityData matches 1 if score SpendType abilityData matches 1 store result score Charge.Max abilityData run data get storage kitpvp:ability-data abilityData.Charge.Max
execute if score Valid abilityData matches 1 if score SpendType abilityData matches 1 store result score Charge.Amount abilityData run data get storage kitpvp:ability-data abilityData.Charge.Amount

execute if score Valid abilityData matches 1 store result score oldTimestamp abilityData run data get storage kitpvp:ability-data abilityData.Timestamp

execute if score Valid abilityData matches 1 store result score HudID abilityData run data get storage kitpvp:ability-data abilityData.HudId
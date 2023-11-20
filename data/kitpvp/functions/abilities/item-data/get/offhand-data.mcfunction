data modify storage kitpvp:item-data Id set from entity @s Inventory[{Slot:-106b}].tag.Special.AbilityId

function kitpvp:abilities/item-data/get/data-macro with storage kitpvp:item-data

execute if data storage kitpvp:item-data abilityData.Effect run scoreboard players set Valid itemData 1

execute if score Valid itemData matches 1 store result score Effect itemData run data get storage kitpvp:item-data abilityData.Effect


execute if score Valid itemData matches 1 store result score SpendType itemData run data get storage kitpvp:item-data abilityData.UseType

execute if score Valid itemData matches 1 if score SpendType itemData matches 1 store result score CD.Max itemData run data get storage kitpvp:item-data abilityData.CD.Max
execute if score Valid itemData matches 1 if score SpendType itemData matches 1 store result score CD.Amount itemData run data get storage kitpvp:item-data abilityData.CD.Amount

execute if score Valid itemData matches 1 if score SpendType itemData matches 1 store result score Charge.Max itemData run data get storage kitpvp:item-data abilityData.Charge.Max
execute if score Valid itemData matches 1 if score SpendType itemData matches 1 store result score Charge.Amount itemData run data get storage kitpvp:item-data abilityData.Charge.Amount

execute if score Valid itemData matches 1 store result score Timestamp itemData run data get storage kitpvp:item-data abilityData.Timestamp

execute if score Valid itemData matches 1 store result score HudID itemData run data get storage kitpvp:item-data abilityData.HudId
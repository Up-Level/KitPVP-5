data modify storage kitpvp:item-data Id set from entity @s SelectedItem.tag.Special.AbilityId

function kitpvp:abilities/item-data/get/data-macro with storage kitpvp:item-data

execute if data storage kitpvp:item-data abilityData.Effect run scoreboard players set valid itemData 1

execute if score valid itemData matches 1 store result score effect itemData run data get storage kitpvp:item-data abilityData.Effect

execute if score valid itemData matches 1 store result score cooldown.length itemData run data get storage kitpvp:item-data abilityData.CooldownLength
execute if score valid itemData matches 1 store result score cooldown.time itemData run data get storage kitpvp:item-data abilityData.CooldownTime

execute if score valid itemData matches 1 store result score charge.max itemData run data get storage kitpvp:item-data abilityData.ChargeMax
execute if score valid itemData matches 1 store result score charge.amount itemData run data get storage kitpvp:item-data abilityData.ChargeAmount

execute if score valid itemData matches 1 store result score timestamp itemData run data get storage kitpvp:item-data abilityData.Timestamp

execute if score valid itemData matches 1 store result score hudId itemData run data get storage kitpvp:item-data abilityData.Ability.HudId
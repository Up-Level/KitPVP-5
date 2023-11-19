data modify storage kitpvp:item-data Id set from entity @s Inventory[{Slot:-106b}].tag.Special.AbilityId

function kitpvp:abilities/item-data/get/data-macro with storage kitpvp:item-data

execute if data storage kitpvp:item-data Effect run scoreboard players set valid itemData 1

execute if score valid itemData matches 1 store result score effect itemData run data get storage kitpvp:item-data Effect

execute if score valid itemData matches 1 store result score cooldown.length itemData run data get storage kitpvp:item-data CooldownLength
execute if score valid itemData matches 1 store result score cooldown.time itemData run data get storage kitpvp:item-data CooldownTime

execute if score valid itemData matches 1 store result score charge.max itemData run data get storage kitpvp:item-data ChargeMax
execute if score valid itemData matches 1 store result score charge.amount itemData run data get storage kitpvp:item-data ChargeAmount

execute if score valid itemData matches 1 store result score timestamp itemData run data get storage kitpvp:item-data Timestamp

execute if score valid itemData matches 1 store result score hudId itemData run data get storage kitpvp:item-data Ability.HudId
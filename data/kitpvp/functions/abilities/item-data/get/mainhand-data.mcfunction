# execute store result score effect itemData run data get entity @s SelectedItem.tag.AbilityEffect
# execute store result score type itemData run data get entity @s SelectedItem.tag.AbilitySlot

data modify storage kitpvp:item-data item set from entity @s SelectedItem

execute if data storage kitpvp:item-data item.tag.Special.Ability.Effect run scoreboard players set valid itemData 1
execute if score valid itemData matches 1 if data storage kitpvp:item-data item.tag.Special.Ability.CooldownLength run scoreboard players set valid itemData 2

execute if score valid itemData matches 1.. store result score effect itemData run data get storage kitpvp:item-data item.tag.Special.Ability.Effect

execute if score valid itemData matches 2 store result score cooldown.length itemData run data get storage kitpvp:item-data item.tag.Special.Ability.CooldownLength
execute if score valid itemData matches 2 store result score cooldown.time itemData run data get storage kitpvp:item-data item.tag.Special.Ability.CooldownTime

execute if score valid itemData matches 2 store result score charge.max itemData run data get storage kitpvp:item-data item.tag.Special.Ability.ChargeMax
execute if score valid itemData matches 2 store result score charge.amount itemData run data get storage kitpvp:item-data item.tag.Special.Ability.ChargeAmount

execute if score valid itemData matches 2 store result score timestamp itemData run data get storage kitpvp:item-data item.tag.Special.Timestamp
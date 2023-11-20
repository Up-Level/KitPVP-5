scoreboard players set @s bin.carrot 0

scoreboard players set Valid itemData 0

# Check if main or off hand
# execute store success score isHotbar itemData run data get entity @s SelectedItem.tag.AbilityEffect
execute store success score isHotbar itemData run data get entity @s SelectedItem.tag.Special.AbilityId

tag @e[tag=abilityTracker] remove abilityTracker
function kitpvp:entity/player/custom/999-ability-tracker/get
tag @e[tag=found] add abilityTracker

# Run if main or off hand
execute if score isHotbar itemData matches 1 run function kitpvp:abilities/item-data/get/mainhand-data
execute if score isHotbar itemData matches 0 run function kitpvp:abilities/item-data/get/offhand-data

execute if score Valid itemData matches 1 run function kitpvp:abilities/calculate-ticked

scoreboard players set Success itemData 1
execute if score Valid itemData matches 1 if score Charge.Amount itemData matches ..0 run scoreboard players set success itemData 0

scoreboard players set Sneaking itemData 0
execute if predicate utilities:is_sneaking run scoreboard players set Sneaking itemData 1

execute if score Valid itemData matches 1.. run function kitpvp:abilities/effect

execute if score Valid itemData matches 1 run function kitpvp:abilities/item-data/set/data

#execute if score Valid itemData matches 1 if score isHotbar itemData matches 1 run function kitpvp:abilities/item-data/set/mainhand-data
#execute if score Valid itemData matches 1 if score isHotbar itemData matches 0 run function kitpvp:abilities/item-data/set/offhand-data

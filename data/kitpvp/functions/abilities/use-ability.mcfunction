scoreboard players set @s bin.carrot 0

scoreboard players set Valid abilityData 0

# Check if main or off hand
# execute store success score isHotbar abilityData run data get entity @s SelectedItem.tag.AbilityEffect
execute store success score isHotbar abilityData run data get entity @s SelectedItem.tag.Special.AbilityId

tag @e[tag=abilityTracker] remove abilityTracker
function kitpvp:entity/player/custom/999-ability-tracker/get
tag @e[tag=found] add abilityTracker

# Run if main or off hand
execute if score isHotbar abilityData matches 1 run function kitpvp:abilities/ability-data/get/mainhand-data
execute if score isHotbar abilityData matches 0 run function kitpvp:abilities/ability-data/get/offhand-data

execute if score Valid abilityData matches 0 run return 0

execute store result score newTimestamp abilityData run time query gametime

execute if score SpendType abilityData matches 1 run function kitpvp:abilities/calculate-ticked

scoreboard players set Success abilityData 0
execute if score SpendType abilityData matches 0 run scoreboard players set Success abilityData 1
execute if score SpendType abilityData matches 1 if score Charge.Amount abilityData matches 1.. run scoreboard players set Success abilityData 1

scoreboard players set Sneaking abilityData 0
execute if predicate utilities:is_sneaking run scoreboard players set Sneaking abilityData 1

function kitpvp:abilities/effect

function kitpvp:abilities/ability-data/set/data

#execute if score Valid abilityData matches 1 if score isHotbar abilityData matches 1 run function kitpvp:abilities/ability-data/set/mainhand-data
#execute if score Valid abilityData matches 1 if score isHotbar abilityData matches 0 run function kitpvp:abilities/ability-data/set/offhand-data

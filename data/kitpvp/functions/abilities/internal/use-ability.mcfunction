tag @e[tag=abilityTracker] remove abilityTracker
function kitpvp:entity/player/custom/999-ability-tracker/get
tag @e[tag=found] add abilityTracker

function kitpvp:abilities/internal/ability-data/get/get-data

execute store result score newTimestamp abilityData run time query gametime

# Get Time Passed
scoreboard players operation timePassed abilityData = newTimestamp abilityData
scoreboard players operation timePassed abilityData -= oldTimestamp abilityData

execute if score SoftCD abilityData > timePassed abilityData run return 0

execute if score Spend.Type abilityData matches 1 run function kitpvp:abilities/internal/calculate-ticked

# Do we meet the requerments to activate abilities that have a "cost"?
scoreboard players set Success abilityData 0
execute if score Spend.Type abilityData matches 0 run scoreboard players set Success abilityData 1
execute if score Spend.Type abilityData matches 1 if score Spend.Charge.Amount abilityData matches 1.. run scoreboard players set Success abilityData 1

# Set the effect to the one we are using depending on the type of use it is
execute if score Use.Type abilityData matches 0 run scoreboard players operation effect abilityData = Use.Effect abilityData

scoreboard players set Sneaking abilityData 0
execute if predicate utilities:is_sneaking run scoreboard players set Sneaking abilityData 1

function kitpvp:abilities/internal/effect

function kitpvp:abilities/internal/ability-data/set/data

#execute if score Valid abilityData matches 1 if score isHotbar abilityData matches 1 run function kitpvp:abilities/ability-data/set/mainhand-data
#execute if score Valid abilityData matches 1 if score isHotbar abilityData matches 0 run function kitpvp:abilities/ability-data/set/offhand-data

tag @e[tag=abilityTracker] remove abilityTracker
function kitpvp:entity/player/custom/999-ability-tracker/get
tag @e[tag=found] add abilityTracker

function kitpvp:abilities/internal/ability-data/get/get-data

execute store result score newTimestamp abilityData run time query gametime

# Get Time Passed
scoreboard players operation timePassed abilityData = newTimestamp abilityData
scoreboard players operation timePassed abilityData -= oldTimestamp abilityData

# Cancel if we are faster than soft cooldown
execute if score SoftCD abilityData > timePassed abilityData run return 0

# Spend(1) (CD/Charges) Calculate cooldowns
execute if score Spend.Type abilityData matches 1 run function kitpvp:abilities/internal/specific/spend/cooldown-charges

# Do we meet the requerments to activate abilities that have a "cost"?
scoreboard players set canSpend abilityData 0
execute if score Spend.Type abilityData matches 0 run scoreboard players set canSpend abilityData 1
execute if score Spend.Type abilityData matches 1 if score Spend.Charge.Amount abilityData matches 1.. run scoreboard players set canSpend abilityData 1

# Set the effect to the one we are using depending on the type of use it is
execute if score Use.Type abilityData matches 0 run scoreboard players operation effect abilityData = Use.Effect abilityData
execute if score Use.Type abilityData matches 1 if score canSpend abilityData matches 1 run function kitpvp:abilities/internal/specific/use/channel/channel
execute if score Use.Type abilityData matches 1 if score canSpend abilityData matches 0 run scoreboard players set effect abilityData 0

scoreboard players set Sneaking abilityData 0
execute if predicate utilities:is_sneaking run scoreboard players set Sneaking abilityData 1

# Activate effect
function kitpvp:abilities/internal/effect

# lmao trash fix
execute if score Use.Type abilityData matches 1 if score canSpend abilityData matches 0 run return 0

# Set ability data
function kitpvp:abilities/internal/ability-data/set/data

# HUD updates
scoreboard players operation id temp = HudID abilityData
scoreboard players set icon temp -1

scoreboard players set manual temp -1

# (CD-Charges)
execute if score Spend.Type abilityData matches 1 run scoreboard players operation cd.length temp = Spend.CD.Max abilityData
execute if score Spend.Type abilityData matches 1 run scoreboard players operation cd.time temp = Spend.CD.Amount abilityData

execute if score Spend.Type abilityData matches 1 run scoreboard players operation count.max temp = Spend.Charge.Max abilityData
execute if score Spend.Type abilityData matches 1 run scoreboard players operation count.amount temp = Spend.Charge.Amount abilityData

function kitpvp:abilities/hud-display/external/update

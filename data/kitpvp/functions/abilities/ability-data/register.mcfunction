execute store result score Effect abilityData run data get storage kitpvp:ability-data abilityData.Effect

execute store result score Spend.Type abilityData run data get storage kitpvp:ability-data abilityData.Spend.Type

execute if score Spend.Type abilityData matches 1 store result score Spend.CD.Max abilityData run data get storage kitpvp:ability-data abilityData.Spend.CD.Max
execute if score Spend.Type abilityData matches 1 store result score Spend.CD.Amount abilityData run data get storage kitpvp:ability-data abilityData.Spend.CD.Amount

execute if score Spend.Type abilityData matches 1 store result score Spend.Charge.Max abilityData run data get storage kitpvp:ability-data abilityData.Spend.Charge.Max
execute if score Spend.Type abilityData matches 1 store result score Spend.Charge.Amount abilityData run data get storage kitpvp:ability-data abilityData.Spend.Charge.Amount

scoreboard players operation HudID abilityData = counter idCounter

#execute store result score HudID abilityData run data get storage kitpvp:ability-data abilityData.HudId

#execute store result score newTimestamp abilityData run time query gametime
execute store result storage kitpvp:ability-data abilityData.Timestamp int 1 run time query gametime

tag @e[tag=abilityTracker] remove abilityTracker
function kitpvp:entity/player/custom/999-ability-tracker/get
tag @e[tag=found] add abilityTracker

function kitpvp:abilities/ability-data/register-macro with storage kitpvp:ability-data

scoreboard players operation id temp = HudID abilityData
execute store result score icon temp run data get storage kitpvp:ability-data abilityData.HudIcon 1

scoreboard players set manual temp 0

execute if score Spend.Type abilityData matches 1 run scoreboard players operation cd.length temp = Spend.CD.Max abilityData
execute if score Spend.Type abilityData matches 1 run scoreboard players operation cd.time temp = Spend.CD.Amount abilityData

execute if score Spend.Type abilityData matches 1 run scoreboard players operation count.max temp = Spend.Charge.Max abilityData
execute if score Spend.Type abilityData matches 1 run scoreboard players operation count.amount temp = Spend.Charge.Amount abilityData

function kitpvp:abilities/hud-display/external/assign


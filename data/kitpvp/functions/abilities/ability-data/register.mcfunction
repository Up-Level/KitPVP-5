execute store result score Effect abilityData run data get storage kitpvp:ability-data abilityData.Effect

execute store result score SpendType abilityData run data get storage kitpvp:ability-data abilityData.SpendType

execute if score SpendType abilityData matches 1 store result score CD.Max abilityData run data get storage kitpvp:ability-data abilityData.CD.Max
execute if score SpendType abilityData matches 1 store result score CD.Amount abilityData run data get storage kitpvp:ability-data abilityData.CD.Amount

execute if score SpendType abilityData matches 1 store result score Charge.Max abilityData run data get storage kitpvp:ability-data abilityData.Charge.Max
execute if score SpendType abilityData matches 1 store result score Charge.Amount abilityData run data get storage kitpvp:ability-data abilityData.Charge.Amount

scoreboard players operation HudID abilityData = counter idCounter

#execute store result score HudID abilityData run data get storage kitpvp:ability-data abilityData.HudId

execute store result score newTimestamp abilityData run time query gametime

tag @e[tag=abilityTracker] remove abilityTracker
function kitpvp:entity/player/custom/999-ability-tracker/get
tag @e[tag=found] add abilityTracker

function kitpvp:abilities/ability-data/register-macro with storage kitpvp:ability-data

scoreboard players operation id temp = HudID abilityData

scoreboard players set manual temp 0

scoreboard players operation cd.length temp = CD.Max abilityData
scoreboard players operation cd.time temp = CD.Amount abilityData

scoreboard players operation count.max temp = Charge.Max abilityData
scoreboard players operation count.amount temp = Charge.Amount abilityData

function kitpvp:abilities/hud-display/external/assign


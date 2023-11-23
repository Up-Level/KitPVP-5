function kitpvp:generic/get-id

data modify storage kitpvp:ability-data abilityData set value {HudIcon:1,Use:{Type:0,Effect:6},Spend:{Type:1,CD:{Amount:0,Max:140},Charge:{Amount:3,Max:3}}}
execute store result storage kitpvp:ability-data abilityData.HudId int 1 run scoreboard players get counter idCounter
execute store result storage kitpvp:ability-data Id int 1 run scoreboard players get counter idCounter

function kitpvp:loadout/items/ability2/items/001-build/give-macro with storage kitpvp:ability-data

function kitpvp:abilities/ability-data/register


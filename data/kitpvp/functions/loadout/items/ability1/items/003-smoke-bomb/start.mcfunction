function kitpvp:generic/get-id

data modify storage kitpvp:ability-data abilityData set value {SpendType:1,Effect:7,HudIcon:6,CD:{Amount:0,Max:360},Charge:{Amount:1,Max:1}}
execute store result storage kitpvp:ability-data abilityData.HudId int 5 run scoreboard players get counter idCounter
execute store result storage kitpvp:ability-data Id int 1 run scoreboard players get counter idCounter

function kitpvp:loadout/items/ability1/items/003-smoke-bomb/give-macro with storage kitpvp:ability-data

function kitpvp:abilities/ability-data/register
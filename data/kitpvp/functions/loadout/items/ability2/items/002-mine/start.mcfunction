function kitpvp:generic/get-id

data modify storage kitpvp:ability-data abilityData set value {Use:{Type:0,Effect:11},HudIcon:7,Spend:{Type:1,CD:{Amount:0,Max:200},Charge:{Amount:1,Max:1}}}
execute store result storage kitpvp:ability-data abilityData.HudId int 1 run scoreboard players get counter idCounter
execute store result storage kitpvp:ability-data Id int 1 run scoreboard players get counter idCounter

function kitpvp:loadout/items/ability2/items/002-mine/give-macro with storage kitpvp:ability-data

function kitpvp:abilities/ability-data/register

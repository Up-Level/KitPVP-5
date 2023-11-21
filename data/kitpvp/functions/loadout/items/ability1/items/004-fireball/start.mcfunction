function kitpvp:generic/get-id

data modify storage kitpvp:ability-data abilityData set value {SpendType:1,Effect:9,HudIcon:3,CD:{Amount:0,Max:100},Charge:{Amount:3,Max:3}}
execute store result storage kitpvp:ability-data abilityData.HudId int 1 run scoreboard players get counter idCounter
execute store result storage kitpvp:ability-data Id int 1 run scoreboard players get counter idCounter

function kitpvp:loadout/items/ability1/items/004-fireball/give-macro with storage kitpvp:ability-data

function kitpvp:abilities/ability-data/register

function kitpvp:generic/get-id

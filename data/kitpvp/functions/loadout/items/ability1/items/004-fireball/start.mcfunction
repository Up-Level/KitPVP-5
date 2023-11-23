function kitpvp:generic/get-id

data modify storage kitpvp:ability-data abilityData set value {HudIcon:3,SoftCD:4,Use:{Type:0,Effect:9},Spend:{Type:1,CD:{Amount:0,Max:100},Charge:{Amount:3,Max:3}}}
execute store result storage kitpvp:ability-data abilityData.HudId int 1 run scoreboard players get counter idCounter
execute store result storage kitpvp:ability-data Id int 1 run scoreboard players get counter idCounter

function kitpvp:loadout/items/ability1/items/004-fireball/give-macro with storage kitpvp:ability-data

function kitpvp:abilities/internal/ability-data/register

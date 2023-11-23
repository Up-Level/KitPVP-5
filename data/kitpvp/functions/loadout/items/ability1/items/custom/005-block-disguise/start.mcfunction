function kitpvp:generic/get-id

data modify storage kitpvp:ability-data abilityData set value {HudIcon:6,SoftCD:4,Use:{Type:0,Effect:10},Spend:{Type:1,CD:{Amount:0,Max:100},Charge:{Amount:1,Max:1}}}
execute store result storage kitpvp:ability-data abilityData.HudId int 1 run scoreboard players get counter idCounter
execute store result storage kitpvp:ability-data Id int 1 run scoreboard players get counter idCounter

function kitpvp:loadout/items/ability1/items/custom/005-block-disguise/give-macro with storage kitpvp:ability-data

function kitpvp:abilities/external/ability-data/assign

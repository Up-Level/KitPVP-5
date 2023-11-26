function kitpvp:generic/get-id

data modify storage kitpvp:ability-data abilityData set value {SoftCD:4,Use:{Type:1,Effect:13,FullEffect:14,CancelTime:4,Channel:{Amount:0,Max:200}},Spend:{Type:1,CD:{Amount:0,Max:200},Charge:{Amount:0,Max:1}}}
execute store result storage kitpvp:ability-data abilityData.HudId int 1 run scoreboard players get counter idCounter
execute store result storage kitpvp:ability-data Id int 1 run scoreboard players get counter idCounter

function kitpvp:loadout/items/utility/items/002-respawn/give-macro with storage kitpvp:ability-data

function kitpvp:abilities/external/ability-data/assign

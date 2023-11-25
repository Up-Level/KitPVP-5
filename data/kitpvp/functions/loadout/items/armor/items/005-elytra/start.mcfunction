function kitpvp:generic/get-id

data modify storage kitpvp:ability-data abilityData set value {HudIcon:3,SoftCD:4,Use:{Type:1,Effect:15,FullEffect:16,CancelTime:4,Channel:{Amount:0,Max:120}},Spend:{Type:1,CD:{Amount:0,Max:900},Charge:{Amount:1,Max:1}}}
execute store result storage kitpvp:ability-data abilityData.HudId int 1 run scoreboard players get counter idCounter
execute store result storage kitpvp:ability-data Id int 1 run scoreboard players get counter idCounter

scoreboard players operation @s a.0 = counter idCounter

function kitpvp:abilities/external/ability-data/assign
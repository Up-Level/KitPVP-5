function kitpvp:generic/get-id

data modify storage kitpvp:ability-data abilityData set value {Use:{Type:0,Effect:7},HudIcon:5,Spend:{Type:1,CD:{Amount:0,Max:360},Charge:{Amount:1,Max:1}}}
execute store result storage kitpvp:ability-data abilityData.HudId int 1 run scoreboard players get counter idCounter
execute store result storage kitpvp:ability-data Id int 1 run scoreboard players get counter idCounter

function kitpvp:loadout/items/ability2/items/003-ninja-gear/give-macro with storage kitpvp:ability-data

function kitpvp:abilities/ability-data/register

attribute @s minecraft:generic.movement_speed modifier add 9-9-6-9-9 "GloveSpeed" .10 multiply_base

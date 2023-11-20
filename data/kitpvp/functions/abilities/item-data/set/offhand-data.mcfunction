execute store result storage kitpvp:ability-data item.tag.Special.Ability.Effect int 1 run scoreboard players get Effect abilityData

execute store result storage kitpvp:ability-data item.tag.Special.Ability.CooldownLength int 1 run scoreboard players get CD.Max abilityData
execute store result storage kitpvp:ability-data item.tag.Special.Ability.CooldownTime int 1 run scoreboard players get CD.Amount abilityData

execute store result storage kitpvp:ability-data item.tag.Special.Ability.ChargeMax int 1 run scoreboard players get Charge.Max abilityData
execute store result storage kitpvp:ability-data item.tag.Special.Ability.ChargeAmount int 1 run scoreboard players get Charge.Amount abilityData

execute store result storage kitpvp:ability-data item.tag.Special.Timestamp int 1 run scoreboard players get newTimestamp abilityData

item modify entity @s weapon.offhand kitpvp:ability-data-ability

scoreboard players operation id temp = HudID abilityData

scoreboard players set manual temp 0

scoreboard players operation cd.length temp = CD.Max abilityData
scoreboard players operation cd.time temp = CD.Amount abilityData

scoreboard players operation count.max temp = Charge.Max abilityData
scoreboard players operation count.amount temp = Charge.Amount abilityData

function kitpvp:abilities/hud-display/external/update
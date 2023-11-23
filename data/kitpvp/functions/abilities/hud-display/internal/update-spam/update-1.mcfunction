scoreboard players set found temp 1

execute if score id temp matches 0.. run scoreboard players operation @s hud.ability.1.Id = id temp
execute if score icon temp matches 0.. run scoreboard players operation @s hud.ability.1.Icon = icon temp

execute if score manual temp matches 0.. run scoreboard players operation @s hud.ability.1.Manual = manual temp

execute if score cd.length temp matches 0.. run scoreboard players operation @s hud.ability.1.CD.Length = cd.length temp
execute if score cd.time temp matches 0.. run scoreboard players operation @s hud.ability.1.CD.Time = cd.time temp

execute if score count.max temp matches 0.. run scoreboard players operation @s hud.ability.1.Count.Max = count.max temp
execute if score count.amount temp matches 0.. run scoreboard players operation @s hud.ability.1.Count.Amount = count.amount temp
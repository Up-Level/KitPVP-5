execute unless score @s hud.ability.2.Count.Amount = @s hud.ability.2.Count.Max run scoreboard players add @s hud.ability.2.CD.Time 1

execute if score @s hud.ability.2.CD.Time >= @s hud.ability.2.CD.Length run scoreboard players add @s hud.ability.2.Count.Amount 1
# execute if score @s hud.ability.2.Count.Amount > @s hud.ability.2.Count.Max run scoreboard players operation @s hud.ability.2.Count.Amount = @s hud.ability.2.Count.Max
execute if score @s hud.ability.2.CD.Time >= @s hud.ability.2.CD.Length run scoreboard players set @s hud.ability.2.CD.Time 0

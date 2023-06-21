#data modify storage kitpvp:action-bar text set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"@"},{"font":"minecraft:default","translate": "space.-24"},{"font":"minecraft:hud_item","color":"#4e5c24","text":"a"},{"font":"minecraft:default","translate": "space.-24"},{"font":"minecraft:hud_generic","color":"#4e5c24","text":"a"},{"font":"minecraft:default","translate": "space.-24"},{"font":"minecraft:hud_generic","color":"#4e5c24","text":"3"}]'
data modify storage kitpvp:action-bar text set value '[]'

data modify storage kitpvp:action-bar-temp text set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"@"},{"font":"minecraft:default","translate": "space.-24"}]'
data modify storage kitpvp:action-bar text append string storage kitpvp:action-bar-temp text

title @s actionbar {"interpret":true,"storage":"kitpvp:action-bar","nbt":"text"}
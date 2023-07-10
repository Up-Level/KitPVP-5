# Show all ability displays

#data modify storage kitpvp:action-bar text set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"@"},{"font":"minecraft:default","translate": "space.-24"},{"font":"minecraft:hud_item","color":"#4e5c24","text":"a"},{"font":"minecraft:default","translate": "space.-24"},{"font":"minecraft:hud_generic","color":"#4e5c24","text":"a"},{"font":"minecraft:default","translate": "space.-24"},{"font":"minecraft:hud_generic","color":"#4e5c24","text":"3"}]'

data modify block 0 50 10000 front_text.messages[0] set value '{"text":""}'
# data remove storage kitpvp:action-bar text
data merge storage kitpvp:action-bar {text:['[]','[]','[]','[]']}

execute if score @s hud.ability.0.Id matches 0.. run function kitpvp:abilities/hud-display/internal/show-cd-spam/show-cd-0
execute if score @s hud.ability.1.Id matches 0.. run function kitpvp:abilities/hud-display/internal/show-cd-spam/show-cd-1
execute if score @s hud.ability.2.Id matches 0.. run function kitpvp:abilities/hud-display/internal/show-cd-spam/show-cd-2
execute if score @s hud.ability.3.Id matches 0.. run function kitpvp:abilities/hud-display/internal/show-cd-spam/show-cd-3
execute if score @s hud.ability.4.Id matches 0.. run function kitpvp:abilities/hud-display/internal/show-cd-spam/show-cd-4
execute if score @s hud.ability.5.Id matches 0.. run function kitpvp:abilities/hud-display/internal/show-cd-spam/show-cd-5
execute if score @s hud.ability.6.Id matches 0.. run function kitpvp:abilities/hud-display/internal/show-cd-spam/show-cd-6
execute if score @s hud.ability.7.Id matches 0.. run function kitpvp:abilities/hud-display/internal/show-cd-spam/show-cd-7
execute if score @s hud.ability.8.Id matches 0.. run function kitpvp:abilities/hud-display/internal/show-cd-spam/show-cd-8
execute if score @s hud.ability.9.Id matches 0.. run function kitpvp:abilities/hud-display/internal/show-cd-spam/show-cd-9

title @s actionbar {"interpret":true,"block":"0 50 10000","nbt":"front_text.messages[0]"}

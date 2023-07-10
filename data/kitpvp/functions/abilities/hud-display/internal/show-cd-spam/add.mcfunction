# Construct hud json

# Basic Box
data modify storage kitpvp:action-bar text[0] set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"@"},{"font":"minecraft:default","translate": "space.-24"}]'


# Icon
execute if score id temp matches 1 run data modify storage kitpvp:action-bar text[1] set value '[{"font":"minecraft:hud_item","color":"#4e5c24","text":"a"},{"font":"minecraft:default","translate": "space.-24"}]'
execute if score id temp matches 2 run data modify storage kitpvp:action-bar text[1] set value '[{"font":"minecraft:hud_item","color":"#4e5c24","text":"b"},{"font":"minecraft:default","translate": "space.-24"}]'
execute if score id temp matches 3 run data modify storage kitpvp:action-bar text[1] set value '[{"font":"minecraft:hud_item","color":"#4e5c24","text":"c"},{"font":"minecraft:default","translate": "space.-24"}]'
execute if score id temp matches 4 run data modify storage kitpvp:action-bar text[1] set value '[{"font":"minecraft:hud_item","color":"#4e5c24","text":"d"},{"font":"minecraft:default","translate": "space.-24"}]'
execute if score cid temp matches 5 run data modify storage kitpvp:action-bar text[1] set value '[{"font":"minecraft:hud_item","color":"#4e5c24","text":"e"},{"font":"minecraft:default","translate": "space.-24"}]'
execute if score id temp matches 6 run data modify storage kitpvp:action-bar text[1] set value '[{"font":"minecraft:hud_item","color":"#4e5c24","text":"f"},{"font":"minecraft:default","translate": "space.-24"}]'


# Cooldown
# Set value on a range of 0-(cooldown length) to 0-17
scoreboard players operation temp temp = cd.time temp
scoreboard players operation temp temp *= #17 mathf.const
scoreboard players operation temp temp /= cd.length temp

execute if score temp temp matches 16 run data modify storage kitpvp:action-bar text[2] set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"a"},{"font":"minecraft:default","translate": "space.-24"}]'
execute if score temp temp matches 15 run data modify storage kitpvp:action-bar text[2] set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"b"},{"font":"minecraft:default","translate": "space.-24"}]'
execute if score temp temp matches 14 run data modify storage kitpvp:action-bar text[2] set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"c"},{"font":"minecraft:default","translate": "space.-24"}]'
execute if score temp temp matches 13 run data modify storage kitpvp:action-bar text[2] set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"d"},{"font":"minecraft:default","translate": "space.-24"}]'
execute if score temp temp matches 12 run data modify storage kitpvp:action-bar text[2] set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"e"},{"font":"minecraft:default","translate": "space.-24"}]'
execute if score temp temp matches 11 run data modify storage kitpvp:action-bar text[2] set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"f"},{"font":"minecraft:default","translate": "space.-24"}]'
execute if score temp temp matches 10 run data modify storage kitpvp:action-bar text[2] set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"g"},{"font":"minecraft:default","translate": "space.-24"}]'
execute if score temp temp matches 9 run data modify storage kitpvp:action-bar text[2] set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"h"},{"font":"minecraft:default","translate": "space.-24"}]'
execute if score temp temp matches 8 run data modify storage kitpvp:action-bar text[2] set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"i"},{"font":"minecraft:default","translate": "space.-24"}]'
execute if score temp temp matches 7 run data modify storage kitpvp:action-bar text[2] set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"j"},{"font":"minecraft:default","translate": "space.-24"}]'
execute if score temp temp matches 6 run data modify storage kitpvp:action-bar text[2] set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"k"},{"font":"minecraft:default","translate": "space.-24"}]'
execute if score temp temp matches 5 run data modify storage kitpvp:action-bar text[2] set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"l"},{"font":"minecraft:default","translate": "space.-24"}]'
execute if score temp temp matches 4 run data modify storage kitpvp:action-bar text[2] set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"m"},{"font":"minecraft:default","translate": "space.-24"}]'
execute if score temp temp matches 3 run data modify storage kitpvp:action-bar text[2] set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"n"},{"font":"minecraft:default","translate": "space.-24"}]'
execute if score temp temp matches 2 run data modify storage kitpvp:action-bar text[2] set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"o"},{"font":"minecraft:default","translate": "space.-24"}]'
execute if score temp temp matches 1 run data modify storage kitpvp:action-bar text[2] set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"p"},{"font":"minecraft:default","translate": "space.-24"}]'

execute if score temp temp matches 0 unless score count.max temp <= count.amount temp run data modify storage kitpvp:action-bar text[2] set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"q"},{"font":"minecraft:default","translate": "space.-24"}]'

execute if score temp temp matches 0 if score count.max temp <= count.amount temp run data modify storage kitpvp:action-bar text[2] set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","text":"a"},{"font":"minecraft:default","translate": "space.-24"}]'

# Count
data modify storage kitpvp:action-bar text[3] set value '[{"font":"minecraft:hud_generic","color":"#4e5c24","score":{"name":"count.amount","objective":"temp"}}]'
# Append
data modify block 0 50 10000 front_text.messages[0] set value '[{"interpret":true,"block":"0 50 10000","nbt":"front_text.messages[0]"},{"interpret":true,"storage":"kitpvp:action-bar","nbt":"text[0]"},{"interpret":true,"storage":"kitpvp:action-bar","nbt":"text[1]"},{"interpret":true,"storage":"kitpvp:action-bar","nbt":"text[2]"},{"interpret":true,"storage":"kitpvp:action-bar","nbt":"text[3]"}]'
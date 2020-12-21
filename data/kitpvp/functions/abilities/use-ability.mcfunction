scoreboard players set @s carrotStickBin 0

# Check if main or off hand
execute store success score isHotbar itemData run data get entity @s SelectedItem.tag.effect

scoreboard players set success itemData 1

# Run if main or off hand
execute if score isHotbar itemData matches 1 run function kitpvp:abilities/get-item-data/mainhand-data
execute if score isHotbar itemData matches 0 run function kitpvp:abilities/get-item-data/offhand-data

execute if score type itemData matches 1 if score @s a1.ChargeCount matches ..0 run scoreboard players set success itemData 0
execute if score type itemData matches 1 if score success itemData matches 1 run scoreboard players remove @s a1.ChargeCount 1

execute if score type itemData matches 2 if score @s a2.ChargeCount matches ..0 run scoreboard players set success itemData 0
execute if score type itemData matches 2 if score success itemData matches 1 run scoreboard players remove @s a2.ChargeCount 1

# execute if score type itemData matches 2 run scoreboard players operation TetTheGreedy a2.CDCount = @s a1.CD
execute if score success itemData matches 1 run function kitpvp:abilities/effect

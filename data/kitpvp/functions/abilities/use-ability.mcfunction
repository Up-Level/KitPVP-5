scoreboard players set @s carrotStickBin 0

# Check if main or off hand
execute store success score isHotbar itemData run data get entity @s SelectedItem.tag.effect

# Run if main or off hand
execute if score isHotbar itemData matches 1 run function kitpvp:abilities/get-item-data/mainhand-data
execute if score isHotbar itemData matches 0 run function kitpvp:abilities/get-item-data/offhand-data


# execute if score type itemData matches 2 run scoreboard players operation TetTheGreedy ability2CDC = @s ability2CD

# Effect Spam

execute if score effect itemData matches 1 run function kitpvp:abilities/effects/001-stupid
execute if score effect itemData matches 2 run function kitpvp:abilities/effects/002-pig
execute if score effect itemData matches 3 run function kitpvp:abilities/effects/003-cow

scoreboard players set @s bin.carrot 0

# Check if main or off hand
execute store success score isHotbar itemData run data get entity @s SelectedItem.tag.AbilityEffect

scoreboard players set success itemData 1

# Run if main or off hand
execute if score isHotbar itemData matches 1 run function kitpvp:abilities/get-item-data/mainhand-data
execute if score isHotbar itemData matches 0 run function kitpvp:abilities/get-item-data/offhand-data

scoreboard players set bin.sneak itemData 0
execute if predicate utilities:is_sneaking run scoreboard players set bin.sneak itemData 1

execute if score type itemData matches 1 if score @s a1.ChargeCount matches ..0 run scoreboard players set success itemData 0
execute if score type itemData matches 2 if score @s a2.ChargeCount matches ..0 run scoreboard players set success itemData 0

execute if score type itemData matches 1 run scoreboard players operation mode itemData = @s a1.Mode
execute if score type itemData matches 2 run scoreboard players operation mode itemData = @s a2.Mode

# execute if score type itemData matches 2 run scoreboard players operation TetTheGreedy a2.CDCount = @s a1.CD
function kitpvp:abilities/effect

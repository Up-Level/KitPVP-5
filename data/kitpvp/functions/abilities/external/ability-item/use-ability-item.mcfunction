scoreboard players set @s bin.carrot 0

# Check if main or off hand
execute store success score isHotbar abilityData run data get entity @s SelectedItem.tag.Special.AbilityId

data remove storage kitpvp:ability-data Id


execute if score isHotbar abilityData matches 1 run data modify storage kitpvp:ability-data Id set from entity @s SelectedItem.tag.Special.AbilityId
execute if score isHotbar abilityData matches 0 run data modify storage kitpvp:ability-data Id set from entity @s Inventory[{Slot:-106b}].tag.Special.AbilityId

execute if data storage kitpvp:ability-data Id run scoreboard players set Valid abilityData 1

execute if score Valid abilityData matches 1 run function kitpvp:abilities/internal/use-ability

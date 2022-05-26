function kitpvp:entity/player/generic/004-trident/get

execute unless entity @e[tag=found] unless data entity @s Inventory[{id:"minecraft:trident",tag:{ItemType:"weapon"}}] run function kitpvp:loadout/items/weapon/items/005-trident/start
particle minecraft:shriek 0 ~ ~1.75 ~ 0 0 0 1 1 force @a

execute unless score @s effects.armorbreak matches 0.. run function kitpvp:effects/effects/004-armor-break/start
scoreboard players set @s effects.armorbreak 100

effect give @s minecraft:weakness 5 4 true
effect give @s minecraft:nausea 5 0 true
effect give @s minecraft:blindness 5 0 true
effect give @s minecraft:slowness 5 3 true
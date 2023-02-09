execute if score @s l.give matches 1 run function kitpvp:loadout/items/all/stop
execute if score @s l.give matches 1 run function kitpvp:loadout/items/all/clear
execute if score @s l.give matches 1 run title @s actionbar ""

scoreboard players set @s l.give 0

execute if score @s l.give matches 1 run function kitpvp:entity/player/external/destroy-all-normal
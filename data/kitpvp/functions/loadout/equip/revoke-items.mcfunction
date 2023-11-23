function kitpvp:entity/player/custom/999-ability-tracker/destroy

function kitpvp:abilities/internal/hud-display/external/reset-cd

execute if score @s l.give matches 1 run function kitpvp:loadout/items/all/stop
execute if score @s l.give matches 1 run function kitpvp:loadout/items/all/clear
execute if score @s l.give matches 1 run title @s actionbar ""

execute if score @s l.give matches 1 run function kitpvp:entity/player/external/destroy-all-death

scoreboard players set @s l.give 0
scoreboard players set @s l.give.time 0
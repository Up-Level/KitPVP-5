execute if score gamemodeActive info matches 1 run function kitpvp:gamemode/tick

execute positioned -10000 64 0 as @a[tag=!inGame,distance=..250] run function kitpvp:base/tick/tick-spawn

execute as @e[type=#kitpvp:has_owner,tag=!playerEntity,tag=!dontCheck] run function kitpvp:entity/player/internal/generic-new

execute as @e[tag=playerEntity] run function kitpvp:entity/player/internal/tick

execute as @a[scores={l.give=1}] run function kitpvp:loadout/items/all/tick
execute as @a[scores={l.e=1}] run function kitpvp:loadout/edit/edit/trigger-tick
execute as @e[scores={bin.carrot=1..}] at @s run function kitpvp:abilities/use-ability

execute as @a[scores={bin.join=1..}] run function kitpvp:generic/clear-player

scoreboard players set @a bin.kill 0
scoreboard players set @a bin.fungus 0
scoreboard players set @a bin.damaged 0

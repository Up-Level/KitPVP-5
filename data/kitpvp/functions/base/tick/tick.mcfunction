# kill @e[type=item,tag=!dontDelete]
kill @e[type=arrow,nbt={inGround:1b}]
kill @e[type=spectral_arrow,nbt={inGround:1b}]

execute as @e[type=item,tag=!checked] run function kitpvp:generic/item-drop

execute if score gamemodeActive info matches 1 run function kitpvp:gamemode/tick

execute positioned -10000 64 0 as @a[tag=!inGame,distance=..250] run function kitpvp:base/tick/tick-spawn

execute as @a[scores={l.give=1}] run function kitpvp:loadout/items/all/tick
execute as @a[scores={l.e=1}] run function kitpvp:loadout/edit/edit/trigger-tick
execute as @e[scores={bin.carrot=1..}] at @s run function kitpvp:abilities/use-ability

execute as @e[tag=playerEntity] run function kitpvp:entity/player/tick

execute as @a[scores={bin.join=1..}] run function kitpvp:generic/clear-player

scoreboard players set @a bin.kill 0
scoreboard players set @a bin.fungus 0
scoreboard players set @a bin.damaged 0

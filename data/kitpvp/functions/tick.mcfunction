kill @e[type=item,tag=!dontDelete]

execute if score gamemodeActive info matches 1 run function kitpvp:gamemode/tick

execute as @e[scores={carrotStickBin=1..}] at @s run function kitpvp:abilities/use-ability

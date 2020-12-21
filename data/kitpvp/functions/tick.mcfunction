# kill @e[type=item,tag=!dontDelete]
kill @e[type=arrow,nbt={inGround:1b}]
kill @e[type=spectral_arrow,nbt={inGround:1b}]

function kitpvp:generic-functions/item-drop

execute if score gamemodeActive info matches 1 run function kitpvp:gamemode/tick
execute as @a[tag=!inGame,gamemode=adventure] positioned 10000 64 0 run function kitpvp:tick-spawn

execute as @e[scores={carrotStickBin=1..}] at @s run function kitpvp:abilities/use-ability

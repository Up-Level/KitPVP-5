execute if score @s effects.rocketLaunch matches 0 run function kitpvp:effects/effects/005-rocket-launch/on-stop
scoreboard players remove @s effects.rocketLaunch 1

particle minecraft:flame ~ ~-1.5 ~ .1 1 .1 0.025 8 force
playsound minecraft:block.lava.extinguish ambient @a ~ ~ ~ 0.2 1
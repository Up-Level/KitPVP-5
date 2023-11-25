execute unless score @s effects.rocketLaunch matches 0.. run function kitpvp:effects/effects/005-rocket-launch/start
execute unless score @s effects.rocketLaunch matches 21.. run scoreboard players set @s effects.rocketLaunch 20

function kitpvp:abilities/internal/spend

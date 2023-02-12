execute if score @s l.give.time matches 0 run function kitpvp:entity/player/custom/014-banner/destroy

execute if score @s l.give.time matches 450 run function kitpvp:entity/player/custom/014-banner/destroy
execute if score @s l.give.time matches 450 run function kitpvp:entity/player/custom/014-banner/create-1
execute if score @s l.give.time matches 450 at @s positioned ~ ~1.5 ~ run playsound minecraft:item.goat_horn.sound.6 master @a ~ ~ ~ 2.5

execute if score @s l.give.time matches 1350 run function kitpvp:entity/player/custom/014-banner/destroy
execute if score @s l.give.time matches 1350 run function kitpvp:entity/player/custom/014-banner/create-2
execute if score @s l.give.time matches 1350 at @s positioned ~ ~1.5 ~ run playsound minecraft:item.goat_horn.sound.0 master @a ~ ~ ~ 2.5

execute if score @s l.give.time matches 2250 run function kitpvp:entity/player/custom/014-banner/destroy
execute if score @s l.give.time matches 2250 run function kitpvp:entity/player/custom/014-banner/create-3
execute if score @s l.give.time matches 2250 at @s positioned ~ ~1.5 ~ run playsound minecraft:item.goat_horn.sound.1 master @a ~ ~ ~ 2.5

function kitpvp:generic/info/get-team

# Self

execute if score @s l.give.time matches 450.. unless score @s effects.rallyBoostSelf matches 0.. run function kitpvp:effects/effects/002-rally-boost-self/start
execute if score @s l.give.time matches 450.. run scoreboard players set @s effects.rallyBoostSelf 80

execute if score @s l.give.time matches 1350.. unless score @s effects.regeneration matches 0.. run function kitpvp:effects/effects/003-regeneration/start
execute if score @s l.give.time matches 1350.. run scoreboard players set @s effects.regeneration 80

execute if score @s l.give.time matches 2250.. run effect give @s minecraft:speed 4 0 true

# Team

execute if score @s l.give.time matches 450.. at @s as @a[distance=..10,tag=found.team] unless score @s effects.rallyBoost matches 0.. run function kitpvp:effects/effects/001-rally-boost/start
execute if score @s l.give.time matches 450.. at @s as @a[distance=..10,tag=found.team] run scoreboard players set @s effects.rallyBoost 80

execute if score @s l.give.time matches 1350.. at @s as @a[distance=..10,tag=found.team] unless score @s effects.regeneration matches 0.. run function kitpvp:effects/effects/003-regeneration/start
execute if score @s l.give.time matches 1350.. at @s as @a[distance=..10,tag=found.team] run scoreboard players set @s effects.regeneration 80

execute if score @s l.give.time matches 2250.. at @s run effect give @a[distance=..10,tag=found.team] minecraft:speed 4 0 true

# execute at @a[distance=..10,tag=found.team] run particle minecraft:dust 1 0 0 1 ~ ~ ~ .25 0 .25 0 2 force
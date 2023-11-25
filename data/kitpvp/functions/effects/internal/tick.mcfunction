# Effect Ticks
execute if score @s effects.rallyBoost matches 0.. run function kitpvp:effects/effects/001-rally-boost/tick
execute if score @s effects.rallyBoostSelf matches 0.. run function kitpvp:effects/effects/002-rally-boost-self/tick
execute if score @s effects.regeneration matches 0.. run function kitpvp:effects/effects/003-regeneration/tick
execute if score @s effects.armorbreak matches 0.. run function kitpvp:effects/effects/004-armor-break/tick
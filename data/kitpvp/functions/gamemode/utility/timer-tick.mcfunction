# Decreases the timer and updates the seconds scoreboard

scoreboard players operation ticksRemaining gm.general -= #1 mathf.const

scoreboard players operation secondsRemaining gm.general = ticksRemaining gm.general
scoreboard players operation secondsRemaining gm.general /= #20 mathf.const

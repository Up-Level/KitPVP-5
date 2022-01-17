# Create a variable that is the positive version of seconds
scoreboard players operation secondsOvertime gm.general = secondsRemaining gm.general
scoreboard players operation secondsOvertime gm.general *= #-1 mathf.const
# Creates a timer with length (in seconds) from current-gamemode Gamemode.Settings.Duration

# Declarations for vscode
#declare score_holder ticksRemaining
#declare score_holder secondsRemaining

execute store result score secondsRemaining gm.general run data get storage current-gamemode Gamemode.Settings.Duration
scoreboard players operation ticksRemaining gm.general = secondsRemaining gm.general
scoreboard players operation ticksRemaining gm.general *= #20 mathf.const

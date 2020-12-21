# Creates a default Time Remaining bossbar, can be modified after use of function
#declare bossbar timer

bossbar remove timer
bossbar add timer [{"text":"Time Remaining: ","color":"gold"},{"score":{"objective":"gm.general","name":"secondsRemaining"},"color":"gold"},{"text":" seconds","color":"gold"}]
bossbar set timer color blue
execute store result bossbar timer max run scoreboard players get ticksRemaining gm.general
execute store result bossbar timer value run scoreboard players get ticksRemaining gm.general

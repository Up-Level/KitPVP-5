# Creates a default Time Remaining bossbar, can be modified after use of function
#declare bossbar gm.bossbar

bossbar remove gm.bossbar
bossbar add gm.bossbar [{"text":"Time Remaining: ","color":"gold"},{"score":{"objective":"gm.general","name":"secondsRemaining"},"color":"gold"},{"text":" seconds","color":"gold"}]
bossbar set gm.bossbar color blue
execute store result bossbar gm.bossbar max run scoreboard players get ticksRemaining gm.general
execute store result bossbar gm.bossbar value run scoreboard players get ticksRemaining gm.general

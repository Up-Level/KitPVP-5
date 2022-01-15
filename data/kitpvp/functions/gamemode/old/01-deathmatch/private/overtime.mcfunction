scoreboard players operation secondsOvertime gm.general = secondsRemaining gm.general
scoreboard players operation secondsOvertime gm.general *= #-1 mathf.const

bossbar set gm.bossbar name [{"text":"Overtime: ","color":"gold"},{"score":{"objective":"gm.general","name":"secondsOvertime"},"color":"gold"},{"text":" seconds","color":"gold"}]

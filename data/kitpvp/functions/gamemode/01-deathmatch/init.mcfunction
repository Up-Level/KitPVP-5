tellraw @a[tag=inGame] [{"text":"Gamemode: Deathmatch","color": "gold","italic": true}, {"text": "\nGet the most kills within ","italic": false}, {"storage": "current-gamemode","nbt": "Gamemode.Settings.Duration","italic": false}, {"text":" seconds.","italic": false}]

scoreboard objectives remove gm.kills-copy
scoreboard objectives add gm.kills-copy dummy

scoreboard objectives setdisplay sidebar gm.kills

execute store result score secondsRemaining gm.general run data get storage current-gamemode Gamemode.Settings.Duration
scoreboard players operation ticksRemaining gm.general = secondsRemaining gm.general
scoreboard players operation ticksRemaining gm.general *= #20 mathf.const

scoreboard players operation @s gm.respawn-timer -= #1 mathf.const

scoreboard players operation @s gm.respawn-secs = @s gm.respawn-timer
scoreboard players operation @s gm.respawn-secs /= #20 mathf.const

title @s actionbar [{"text": "Respawning in ","color": "gold"}, {"score": {"name": "@s","objective": "gm.respawn-secs"}}, " seconds..."]

effect give @s saturation 1 255 true
effect give @s resistance 1 255 true
effect give @s weakness 1 255 true
effect give @s invisibility 1 0 true

execute if entity @s[scores={gm.respawn-timer=..0}] run function kitpvp:gamemode/private/end-respawn

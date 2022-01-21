# Decrease respawn time
scoreboard players operation @s gm.respawn-timer -= #1 mathf.const

# Get respawn time in secs
scoreboard players operation @s gm.respawn-secs = @s gm.respawn-timer
scoreboard players operation @s gm.respawn-secs /= #20 mathf.const

# Show text for respawning time in seconds
title @s actionbar [{"text": "Respawning in ","color": "gold"}, {"score": {"name": "@s","objective": "gm.respawn-secs"}}, " seconds..."]

# Give immortality to the mortals for a limited time
effect give @s saturation 1 255 true
effect give @s resistance 1 255 true
effect give @s weakness 1 255 true

# Get out of heaven
execute if score @s gm.respawn-timer matches ..0 run function kitpvp:gamemode/spawn

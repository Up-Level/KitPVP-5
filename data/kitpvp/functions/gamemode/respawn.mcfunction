scoreboard players operation @s gm.respawn-timer -= #1 mathf.const

tp @s 10000 64 0
effect give @s saturation 1 255 true
effect give @s resistance 1 255 true
effect give @s weakness 1 255 true
effect give @s invisibility 1 0 true

execute if entity @s[scores={gm.respawn-timer=..0}] run function kitpvp:gamemode/private/end-respawn
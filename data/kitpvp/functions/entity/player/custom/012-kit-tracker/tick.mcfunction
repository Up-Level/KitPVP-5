function kitpvp:entity/player/internal/get-owner-this

execute at @e[limit=1,tag=found] run tp @s ~ ~ ~
# if score @e[limit=1,tag=found] l.give matches 1
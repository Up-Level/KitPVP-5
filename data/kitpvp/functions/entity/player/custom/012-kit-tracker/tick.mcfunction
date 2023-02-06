function kitpvp:entity/player/internal/get-owner-this

execute if score @e[limit=1,tag=found] bin.dead matches 0 at @e[limit=1,tag=found] run tp @s ~ ~ ~
# if score @e[limit=1,tag=found] l.give matches 1
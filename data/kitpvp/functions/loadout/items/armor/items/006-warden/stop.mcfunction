effect clear @s darkness

execute if score @s bin.dead matches 1 run function kitpvp:entity/player/custom/012-kit-tracker/get
execute if score @s bin.dead matches 1 at @e[limit=1,tag=found] run summon minecraft:warden ~ ~ ~ {Brain: {memories: {"minecraft:dig_cooldown":{value: {}, ttl: 40L}, "minecraft:is_emerging": {value: {}, ttl: 85L}}}}
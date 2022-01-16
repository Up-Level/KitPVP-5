execute at @s run particle minecraft:dust_color_transition 0 0.27058823529 0 1 1 1 0 ~ ~1 ~ 0.25 .35 0.25 0.05 2 force

function kitpvp:generic/info/get-team
execute at @s run effect give @a[tag=found.team,distance=..5] minecraft:speed 3 0 true
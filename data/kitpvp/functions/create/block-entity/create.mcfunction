summon minecraft:area_effect_cloud 0 64 10000 {Tags:["blockPoint","temp"],Age:-99999,Particle:"block air",Passengers:[{id:falling_block,Tags:["blockVisual","temp"],NoGravity:1b,NoAI:1b,Time:-2147483648,BlockState:{Name:"bricks"}},{id:shulker,Tags:["blockBox","temp"],NoAI:1b,Invulnerable:1b,Silent:1b}]}
effect give @e[tag=temp,tag=blockBox] minecraft:invisibility 999999 0 true

execute rotated 0 0 run tp @e[tag=blockPoint,tag=temp] ^ ^-0.375 ^

tag @e[tag=temp] remove temp

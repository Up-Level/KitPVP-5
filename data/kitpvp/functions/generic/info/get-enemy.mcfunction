tag @a remove found.enemy

execute if entity @s[team=none] as @a[team=none] if score @s l.give matches 1 run tag @s add found.enemy
execute if entity @s[team=] as @a[team=] if score @s l.give matches 1 run tag @s add found.enemy

execute if entity @s[team=red] as @a[team=!red] if score @s l.give matches 1 run tag @s add found.enemy
execute if entity @s[team=green] as @a[team=!green] if score @s l.give matches 1 run tag @s add found.enemy
execute if entity @s[team=blue] as @a[team=!blue] if score @s l.give matches 1 run tag @s add found.enemy
execute if entity @s[team=yellow] as @a[team=!yellow] if score @s l.give matches 1 run tag @s add found.enemy

tag @s remove found.enemy

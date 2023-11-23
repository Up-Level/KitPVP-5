# Find an unused ability display and assign it
scoreboard players set found temp 0

execute if score @s hud.ability.0.Id matches ..-1 run function kitpvp:abilities/hud-display/internal/assign-spam/assign-0
execute if score found temp matches 0 if score @s hud.ability.1.Id matches ..-1 run function kitpvp:abilities/hud-display/internal/assign-spam/assign-1
execute if score found temp matches 0 if score @s hud.ability.2.Id matches ..-1 run function kitpvp:abilities/hud-display/internal/assign-spam/assign-2
execute if score found temp matches 0 if score @s hud.ability.3.Id matches ..-1 run function kitpvp:abilities/hud-display/internal/assign-spam/assign-3
execute if score found temp matches 0 if score @s hud.ability.4.Id matches ..-1 run function kitpvp:abilities/hud-display/internal/assign-spam/assign-4
execute if score found temp matches 0 if score @s hud.ability.5.Id matches ..-1 run function kitpvp:abilities/hud-display/internal/assign-spam/assign-5
execute if score found temp matches 0 if score @s hud.ability.6.Id matches ..-1 run function kitpvp:abilities/hud-display/internal/assign-spam/assign-6
execute if score found temp matches 0 if score @s hud.ability.7.Id matches ..-1 run function kitpvp:abilities/hud-display/internal/assign-spam/assign-7
execute if score found temp matches 0 if score @s hud.ability.8.Id matches ..-1 run function kitpvp:abilities/hud-display/internal/assign-spam/assign-8
execute if score found temp matches 0 if score @s hud.ability.9.Id matches ..-1 run function kitpvp:abilities/hud-display/internal/assign-spam/assign-9
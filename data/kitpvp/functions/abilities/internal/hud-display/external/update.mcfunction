# Find a used ability display and manually change its values.
scoreboard players set found temp 0

execute if score @s hud.ability.0.Id = id temp run function kitpvp:abilities/internal/hud-display/internal/update-spam/update-0
execute if score found temp matches 0 if score @s hud.ability.1.Id = id temp run function kitpvp:abilities/internal/hud-display/internal/update-spam/update-1
execute if score found temp matches 0 if score @s hud.ability.2.Id = id temp run function kitpvp:abilities/internal/hud-display/internal/update-spam/update-2
execute if score found temp matches 0 if score @s hud.ability.3.Id = id temp run function kitpvp:abilities/internal/hud-display/internal/update-spam/update-3
execute if score found temp matches 0 if score @s hud.ability.4.Id = id temp run function kitpvp:abilities/internal/hud-display/internal/update-spam/update-4
execute if score found temp matches 0 if score @s hud.ability.5.Id = id temp run function kitpvp:abilities/internal/hud-display/internal/update-spam/update-5
execute if score found temp matches 0 if score @s hud.ability.6.Id = id temp run function kitpvp:abilities/internal/hud-display/internal/update-spam/update-6
execute if score found temp matches 0 if score @s hud.ability.7.Id = id temp run function kitpvp:abilities/internal/hud-display/internal/update-spam/update-7
execute if score found temp matches 0 if score @s hud.ability.8.Id = id temp run function kitpvp:abilities/internal/hud-display/internal/update-spam/update-8
execute if score found temp matches 0 if score @s hud.ability.9.Id = id temp run function kitpvp:abilities/internal/hud-display/internalupdate-/spam/update-9
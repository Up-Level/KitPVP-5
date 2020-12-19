tellraw @a "Initialising gamemode"

data merge storage current-gamemode {Id:0,Name:""}

execute if score gamemode info matches 1 run function kitpvp:gamemode/01-deathmatch/info

tellraw @a {"storage":"current-gamemode","nbt":"{}"}

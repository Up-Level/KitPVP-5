tellraw @a "Getting map info"

data merge storage current-map {Id:0,Name:"",Corner1:[0,0,0],Corner2:[0,0,0],Gamemodes:{}}

execute if score map info matches 1 run function kitpvp:map/01-test/info

tellraw @a {"storage":"current-map","nbt":"{}"}

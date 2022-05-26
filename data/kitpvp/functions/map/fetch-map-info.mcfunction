data remove storage current-map Map.Gamemodes
data merge storage current-map {Map:{Id:0,Name:"",Corner1:[0,0,0],Corner2:[0,0,0],Chunks:[0, 0, 0],Offset:[0,0,0],Gamemodes:{}}}

execute if score map info matches 1 run data modify storage current-map Map set from storage map-01
execute if score map info matches 2 run data modify storage current-map Map set from storage map-02
execute if score map info matches 3 run data modify storage current-map Map set from storage map-03
execute if score map info matches 4 run data modify storage current-map Map set from storage map-04
execute if score map info matches 5 run data modify storage current-map Map set from storage map-05
execute if score map info matches 6 run data modify storage current-map Map set from storage map-06
execute if score map info matches 7 run data modify storage current-map Map set from storage map-07
execute if score map info matches 8 run data modify storage current-map Map set from storage map-08
execute if score map info matches 9 run data modify storage current-map Map set from storage map-09
execute if score map info matches 10 run data modify storage current-map Map set from storage map-10
execute if score map info matches 11 run data modify storage current-map Map set from storage map-11
execute if score map info matches 12 run data modify storage current-map Map set from storage map-12
execute if score map info matches 13 run data modify storage current-map Map set from storage map-13

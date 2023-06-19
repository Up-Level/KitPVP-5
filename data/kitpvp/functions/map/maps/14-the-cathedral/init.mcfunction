function kitpvp:map/maps/14-the-cathedral/spawns

# Pentagram
summon minecraft:item_display 0 36.6875 3 {item_display:"head",item:{id:"stone_button",Count:1,tag:{CustomModelData:10}},transformation:[1.000f, 0.000f, 0.000f,0.000f,0.000f, -1.000f, -0.000f,-0.500f,0.000f, 0.000f, -1.000f,0.000f,0.000f, 0.000f, 0.000f,1.000f],brightness:{block:10},Tags:["mapEntity"]}

summon frog -37 42 23 {Tags:["mapEntity"]}
summon frog -44 34 6 {Tags:["mapEntity"]}
summon frog 23 34 33 {Tags:["mapEntity"]}
summon frog 31 34 24 {Tags:["mapEntity"]}
summon frog -1 29 -24 {Tags:["mapEntity"]}
summon frog 7 28 -35 {Tags:["mapEntity"]}

time set 18000
weather clear
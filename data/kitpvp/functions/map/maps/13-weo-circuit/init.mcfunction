function kitpvp:map/maps/13-weo-circuit/spawns

# Fill in paths where they break
fill -44 -31 -4 -39 -31 -1 dirt_path replace dirt
fill -10 -31 -8 26 -31 0 dirt_path replace dirt
fill 25 -32 38 27 -32 43 dirt_path replace dirt
fill 49 -31 12 51 -31 20 dirt_path replace dirt

# Kart area
summon item_frame 12 -30 42 {Facing: 5b, ItemRotation: 0b, Fixed: 1b, Tags: ["mapEntity"], Item: {id: "minecraft:filled_map", Count: 1b, tag: {map: 1046}}}
summon item_frame 6 -30 42 {Facing: 5b, ItemRotation: 3b, Fixed: 1b, Tags: ["mapEntity"], Item: {id: "minecraft:filled_map", Count: 1b, tag: {map: 1046}}}
summon item_frame 2 -30 46 {Facing: 2b, ItemRotation: 0b, Fixed: 1b, Tags: ["mapEntity"], Item: {id: "minecraft:filled_map", Count: 1b, tag: {map: 1046}}}
summon item_frame -2 -30 42 {Facing: 4b, ItemRotation: 0b, Fixed: 1b, Tags: ["mapEntity"], Item: {id: "minecraft:filled_map", Count: 1b, tag: {map: 1046}}}
summon item_frame -12 -30 46 {Facing: 2b, ItemRotation: 0b, Fixed: 1b, Tags: ["mapEntity"], Item: {id: "minecraft:filled_map", Count: 1b, tag: {map: 1046}}}
summon item_frame -18 -30 42 {Facing: 5b, ItemRotation: 0b, Fixed: 1b, Tags: ["mapEntity"], Item: {id: "minecraft:filled_map", Count: 1b, tag: {map: 1046}}}

# Small watchtower
summon item_frame -23 -26 2 {Facing: 4b, ItemRotation: 0b, Fixed: 1b, Tags: ["mapEntity"], Item: {id: "minecraft:filled_map", Count: 1b, tag: {map: 1046}}}

# Main watching area
summon item_frame 27 -23 -6 {Facing: 5b, ItemRotation: 0b, Fixed: 1b, Tags: ["mapEntity"], Item: {id: "minecraft:filled_map", Count: 1b, tag: {map: 1046}}}
summon item_frame 27 -23 6 {Facing: 5b, ItemRotation: 0b, Fixed: 1b, Tags: ["mapEntity"], Item: {id: "minecraft:filled_map", Count: 1b, tag: {map: 1046}}}

# Rockdog
summon item_frame -4 -29 -45 {Facing: 1b, ItemRotation: 5b, Fixed: 1b, Tags: ["mapEntity"], Item: {id: "minecraft:bread", Count: 1b, tag: {Rockdog: 1, CustomModelData: 10, display: {Name: '[{"text":"Rockdog\'s Hotdog","italic": false}]'}}}}

time set 1000
weather clear

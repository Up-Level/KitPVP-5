# Run utility functions
function kitpvp:gamemode/utility/timer/init

kill @e[tag=flag]

tag @a remove capturingRedFlag
tag @a remove capturingBlueFlag
tag @a remove capturingGreenFlag
tag @a remove capturingYellowFlag

# Summon Flags
execute if data storage current-map Map.Gamemodes.6.RedSpawn run summon armor_stand 0 0 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Marker:1b,Glowing:1b,DisabledSlots:4144959,Tags:["flag", "flagRed"],ArmorItems:[{},{},{},{id:"minecraft:red_glazed_terracotta",Count:1b}]}
execute if data storage current-map Map.Gamemodes.6.RedSpawn as @e[tag=flagRed,limit=1] run data modify entity @s Pos set from storage current-map Map.Gamemodes.6.RedSpawn
team join visualRed @e[tag=flagRed]

execute if data storage current-map Map.Gamemodes.6.BlueSpawn run summon armor_stand 0 0 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Marker:1b,Glowing:1b,DisabledSlots:4144959,Tags:["flag", "flagBlue"],ArmorItems:[{},{},{},{id:"minecraft:light_blue_glazed_terracotta",Count:1b}]}
execute if data storage current-map Map.Gamemodes.6.BlueSpawn as @e[tag=flagBlue,limit=1] run data modify entity @s Pos set from storage current-map Map.Gamemodes.6.BlueSpawn
team join visualBlue @e[tag=flagBlue]

execute if data storage current-map Map.Gamemodes.6.GreenSpawn run summon armor_stand 0 0 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Marker:1b,Glowing:1b,DisabledSlots:4144959,Tags:["flag", "flagGreen"],ArmorItems:[{},{},{},{id:"minecraft:lime_glazed_terracotta",Count:1b}]}
execute if data storage current-map Map.Gamemodes.6.GreenSpawn as @e[tag=flagGreen,limit=1] run data modify entity @s Pos set from storage current-map Map.Gamemodes.6.RedSpawn
team join visualGreen @e[tag=flagGreen]

execute if data storage current-map Map.Gamemodes.6.YellowSpawn run summon armor_stand 0 0 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Marker:1b,Glowing:1b,DisabledSlots:4144959,Tags:["flag", "flagYellow"],ArmorItems:[{},{},{},{id:"minecraft:yellow_glazed_terracotta",Count:1b}]}
execute if data storage current-map Map.Gamemodes.6.YellowSpawn as @e[tag=flagYellow,limit=1] run data modify entity @s Pos set from storage current-map Map.Gamemodes.6.RedSpawn
team join visualYellow @e[tag=flagYellow]

# Add round wins to everyone who won
execute if score round gm.general matches 1.. run function kitpvp:gamemode/06-ctf/grant-round-win

execute if data storage current-map Map.Gamemodes.6.RedSpawn run scoreboard players set Red gm.sidebar 0
execute if data storage current-map Map.Gamemodes.6.BlueSpawn run scoreboard players set Blue gm.sidebar 0
execute if data storage current-map Map.Gamemodes.6.GreenSpawn run scoreboard players set Green gm.sidebar 0
execute if data storage current-map Map.Gamemodes.6.YellowSpawn run scoreboard players set Yellow gm.sidebar 0

# Display info saying who is currently winning.
execute if score red gm.rounds-copy matches 0 run data merge storage winning-team {Winner:"{\"text\":\"Red Team\",\"color\":\"red\"}"}
execute if score blue gm.rounds-copy matches 0 run data merge storage winning-team {Winner:"{\"text\":\"Blue Team\",\"color\":\"blue\"}"}
execute if score green gm.rounds-copy matches 0 run data merge storage winning-team {Winner:"{\"text\":\"Green Team\",\"color\":\"green\"}"}
execute if score yellow gm.rounds-copy matches 0 run data merge storage winning-team {Winner:"{\"text\":\"Yellow Team\",\"color\":\"yellow\"}"}

execute if score totalRounds gm.general matches 2.. if score round gm.general matches 1.. as @a[tag=inGame,team=red] run tellraw @s [{"text":"Your team has won ","color":"gold"}, {"score":{"name": "red","objective": "gm.rounds"}}, " round(s).\nCurrently in the lead: ", {"nbt":"Winner","storage":"winning-team","interpret":true}, " with ", {"score":{"name": "highest","objective": "gm.rounds-copy"}}, " rounds won."]
execute if score totalRounds gm.general matches 2.. if score round gm.general matches 1.. as @a[tag=inGame,team=blue] run tellraw @s [{"text":"Your team has won ","color":"gold"}, {"score":{"name": "blue","objective": "gm.rounds"}}, " round(s).\nCurrently in the lead: ", {"nbt":"Winner","storage":"winning-team","interpret":true}, " with ", {"score":{"name": "highest","objective": "gm.rounds-copy"}}, " rounds won."]
execute if score totalRounds gm.general matches 2.. if score round gm.general matches 1.. as @a[tag=inGame,team=green] run tellraw @s [{"text":"Your team has won ","color":"gold"}, {"score":{"name": "green","objective": "gm.rounds"}}, " round(s).\nCurrently in the lead: ", {"nbt":"Winner","storage":"winning-team","interpret":true}, " with ", {"score":{"name": "highest","objective": "gm.rounds-copy"}}, " rounds won."]
execute if score totalRounds gm.general matches 2.. if score round gm.general matches 1.. as @a[tag=inGame,team=yellow] run tellraw @s [{"text":"Your team has won ","color":"gold"}, {"score":{"name": "yellow","objective": "gm.rounds"}}, " round(s).\nCurrently in the lead: ", {"nbt":"Winner","storage":"winning-team","interpret":true}, " with ", {"score":{"name": "highest","objective": "gm.rounds-copy"}}, " rounds won."]

execute as @a[tag=inGame] run function kitpvp:loadout/revoke-items

# Calculate who has won the most rounds so far
execute as @a[tag=inGame] run scoreboard players operation @s gm.rounds-copy = @s gm.rounds
scoreboard players set highest gm.rounds-copy 0
scoreboard players operation highest gm.rounds-copy > @a[tag=inGame] gm.rounds-copy
scoreboard players operation @a[tag=inGame] gm.rounds-copy -= highest gm.rounds-copy

# End game if maximum rounds reached
execute if score round gm.general = totalRounds gm.general run function kitpvp:gamemode/06-ctf/end
# End game if not enough players
execute if score playersInGame gm.general matches ..1 run function kitpvp:gamemode/06-ctf/end

# Send players to respawn room
execute if score round gm.general < totalRounds gm.general if score round gm.general matches 2.. as @a[tag=inGame] run function kitpvp:gamemode/utility/death/private/start-respawn
execute if score round gm.general < totalRounds gm.general if score round gm.general matches ..1 as @a[tag=inGame] run function kitpvp:gamemode/06-ctf/spawn

# Increase round number
scoreboard players operation round gm.general += #1 mathf.const

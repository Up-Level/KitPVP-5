# Run utility functions
function kitpvp:gamemode/utility/timer/init

# Add points to everyone who won
execute if score round gm.general matches 1.. run scoreboard players add @a[tag=inGame,scores={gm.lives=1..}] gm.rounds 1

scoreboard players set @a[tag=inGame] gm.lives 3
scoreboard players set @a[tag=inGame] gm.kills 0

execute as @a[tag=inGame] run function kitpvp:entity/player/external/destroy-all-end-round
execute as @a[tag=inGame] run function kitpvp:loadout/equip/revoke-items

gamemode adventure @a[tag=inGame]

# Calculate who has won the most rounds so far
execute as @a[tag=inGame] run scoreboard players operation @s gm.rounds-copy = @s gm.rounds
scoreboard players set highest gm.rounds-copy 0
scoreboard players operation highest gm.rounds-copy > @a[tag=inGame] gm.rounds-copy
scoreboard players operation @a[tag=inGame] gm.rounds-copy -= highest gm.rounds-copy

# Display info saying who is currently winning.
execute if score totalRounds gm.general matches 2.. if score round gm.general matches 1.. as @a[tag=inGame] run tellraw @s [{"text":"You have won ","color":"gold"}, {"score":{"name": "@s","objective": "gm.rounds"}}, " round(s).\nCurrently in the lead: ", {"selector":"@a[scores={gm.rounds-copy=0}]"}, " with ", {"score":{"name": "highest","objective": "gm.rounds-copy"}}, " rounds won."]

# End game if maximum rounds reached
execute if score round gm.general = totalRounds gm.general run function kitpvp:gamemode/03-lives/end
# End game if not enough players
execute if score playersInGame gm.general matches ..1 run function kitpvp:gamemode/03-lives/end

# Send players to respawn room
execute if score round gm.general < totalRounds gm.general if score round gm.general matches 1.. as @a[tag=inGame] run function kitpvp:gamemode/utility/death/private/start-respawn
execute if score round gm.general < totalRounds gm.general if score round gm.general matches 0 as @a[tag=inGame] run function kitpvp:gamemode/03-lives/spawn

# Increase round number
scoreboard players operation round gm.general += #1 mathf.const

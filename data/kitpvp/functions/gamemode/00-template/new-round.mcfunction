# Run utility functions
function kitpvp:gamemode/utility/timer/init

# Add points to everyone who won
scoreboard players add @r[tag=inGame] gm.round-wins 1

# End game if maximum rounds reached
execute if score round gm.general = totalRounds gm.general run function kitpvp:gamemode/00-template/end

# Spawn players
execute if score round gm.general < totalRounds gm.general as @a[tag=inGame] run function kitpvp:gamemode/00-template/spawn

# Increase round number
scoreboard players operation round gm.general += #1 mathf.const

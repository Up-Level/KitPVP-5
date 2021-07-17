# End game if maximum rounds reached
execute if score round gm.general = totalRounds gm.general run function kitpvp:gamemode/00-template/end

# Spawn players
execute if score round gm.general < totalRounds gm.general as @a[tag=inGame] run function kitpvp:gamemode/00-template/spawn

# Increase round number
scoreboard players operation round gm.general += #1 mathf.const

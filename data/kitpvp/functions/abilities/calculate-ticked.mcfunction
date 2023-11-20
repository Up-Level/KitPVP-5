# Set Time
scoreboard players operation timePassed abilityData = newTimestamp abilityData
scoreboard players operation timePassed abilityData -= oldTimestamp abilityData

# Max time passed allowed
scoreboard players operation timePassedReal abilityData = timePassed abilityData

scoreboard players operation temp abilityData = Charge.Max abilityData
scoreboard players operation temp abilityData -= Charge.Amount abilityData
scoreboard players operation temp abilityData *= CD.Max abilityData

scoreboard players operation temp abilityData -= CD.Amount abilityData

scoreboard players operation timePassed abilityData < temp abilityData

# Set Charge Amount

scoreboard players operation temp abilityData = CD.Amount abilityData

scoreboard players operation temp abilityData += timePassed abilityData
scoreboard players operation temp abilityData /= CD.Max abilityData

scoreboard players operation Charge.Amount abilityData += temp abilityData
scoreboard players operation Charge.Amount abilityData < Charge.Max abilityData

# Set Cooldown Time
scoreboard players operation temp abilityData = CD.Amount abilityData

scoreboard players operation temp abilityData += timePassed abilityData
scoreboard players operation temp abilityData %= CD.Max abilityData

scoreboard players operation CD.Amount abilityData = temp abilityData
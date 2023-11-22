# Set Time
scoreboard players operation timePassed abilityData = newTimestamp abilityData
scoreboard players operation timePassed abilityData -= oldTimestamp abilityData

# Max time passed allowed
scoreboard players operation timePassedReal abilityData = timePassed abilityData

scoreboard players operation temp abilityData = Spend.Charge.Max abilityData
scoreboard players operation temp abilityData -= Spend.Charge.Amount abilityData
scoreboard players operation temp abilityData *= Spend.CD.Max abilityData

scoreboard players operation temp abilityData -= Spend.CD.Amount abilityData

scoreboard players operation timePassed abilityData < temp abilityData

# Set Charge Amount

scoreboard players operation temp abilityData = Spend.CD.Amount abilityData

scoreboard players operation temp abilityData += timePassed abilityData
scoreboard players operation temp abilityData /= Spend.CD.Max abilityData

scoreboard players operation Spend.Charge.Amount abilityData += temp abilityData
scoreboard players operation Spend.Charge.Amount abilityData < Spend.Charge.Max abilityData

# Set Cooldown Time
scoreboard players operation temp abilityData = Spend.CD.Amount abilityData

scoreboard players operation temp abilityData += timePassed abilityData
scoreboard players operation temp abilityData %= Spend.CD.Max abilityData

scoreboard players operation Spend.CD.Amount abilityData = temp abilityData
# Max time passed allowed
scoreboard players operation timePassedClamped abilityData = timePassed abilityData

scoreboard players operation temp abilityData = Spend.Charge.Max abilityData
scoreboard players operation temp abilityData -= Spend.Charge.Amount abilityData
scoreboard players operation temp abilityData *= Spend.CD.Max abilityData

scoreboard players operation temp abilityData -= Spend.CD.Amount abilityData

scoreboard players operation timePassedClamped abilityData < temp abilityData

# Set Charge Amount

scoreboard players operation temp abilityData = Spend.CD.Amount abilityData

scoreboard players operation temp abilityData += timePassedClamped abilityData
scoreboard players operation temp abilityData /= Spend.CD.Max abilityData

scoreboard players operation Spend.Charge.Amount abilityData += temp abilityData
scoreboard players operation Spend.Charge.Amount abilityData < Spend.Charge.Max abilityData

# Set Cooldown Time
scoreboard players operation temp abilityData = Spend.CD.Amount abilityData

scoreboard players operation temp abilityData += timePassedClamped abilityData
scoreboard players operation temp abilityData %= Spend.CD.Max abilityData

scoreboard players operation Spend.CD.Amount abilityData = temp abilityData
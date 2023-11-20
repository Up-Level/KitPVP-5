# Set Time
execute store result score temp itemData run time query gametime

scoreboard players operation timePassed itemData = temp itemData
scoreboard players operation timePassed itemData -= Timestamp itemData

scoreboard players operation Timestamp itemData = temp itemData

# Max time passed allowed
scoreboard players operation timePassedReal itemData = timePassed itemData

scoreboard players operation temp itemData = Charge.Max itemData
scoreboard players operation temp itemData -= Charge.Amount itemData
scoreboard players operation temp itemData *= CD.Max itemData

scoreboard players operation temp itemData -= CD.Amount itemData

scoreboard players operation timePassed itemData < temp itemData

# Set Charge Amount

scoreboard players operation temp itemData = CD.Amount itemData

scoreboard players operation temp itemData += timePassed itemData
scoreboard players operation temp itemData /= CD.Max itemData

scoreboard players operation Charge.Amount itemData += temp itemData
scoreboard players operation Charge.Amount itemData < Charge.Max itemData

# Set Cooldown Time
scoreboard players operation temp itemData = CD.Amount itemData

scoreboard players operation temp itemData += timePassed itemData
scoreboard players operation temp itemData %= CD.Max itemData

scoreboard players operation CD.Amount itemData = temp itemData
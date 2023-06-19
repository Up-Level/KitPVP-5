# Set Time
execute store result score temp itemData run time query gametime

scoreboard players operation timePassed itemData = temp itemData
scoreboard players operation timePassed itemData -= timestamp itemData

scoreboard players operation timestamp itemData = temp itemData

# Max time passed allowed
scoreboard players operation timePassedReal itemData = timePassed itemData

scoreboard players operation temp itemData = charge.max itemData
scoreboard players operation temp itemData -= charge.amount itemData
scoreboard players operation temp itemData *= cooldown.length itemData

scoreboard players operation temp itemData -= cooldown.time itemData

scoreboard players operation timePassed itemData < temp itemData

# Set Charge Amount

scoreboard players operation temp itemData = cooldown.time itemData

scoreboard players operation temp itemData += timePassed itemData
scoreboard players operation temp itemData /= cooldown.length itemData

scoreboard players operation charge.amount itemData += temp itemData
scoreboard players operation charge.amount itemData < charge.max itemData

# Set Cooldown Time
scoreboard players operation temp itemData = cooldown.time itemData

scoreboard players operation temp itemData += timePassed itemData
scoreboard players operation temp itemData %= cooldown.length itemData

scoreboard players operation cooldown.time itemData = temp itemData
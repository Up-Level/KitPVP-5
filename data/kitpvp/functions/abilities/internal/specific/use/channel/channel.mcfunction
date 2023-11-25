scoreboard players operation timePassedClamped abilityData = timePassed abilityData

# If we have taken too long since last time using ability or if we were fully charged last time it was used, reset
execute if score Use.CancelTime abilityData < timePassed abilityData run function kitpvp:abilities/internal/specific/use/channel/reset-channel

scoreboard players operation Use.Channel.Amount abilityData += timePassedClamped abilityData

tellraw @s ["",{"score":{"name":"Use.Channel.Amount","objective":"abilityData"}},"/",{"score":{"name":"Use.Channel.Max","objective":"abilityData"}}]

# Get % (0-100)
scoreboard players operation channelPercentage abilityData = Use.Channel.Amount abilityData
scoreboard players operation channelPercentage abilityData *= #100 mathf.const
scoreboard players operation channelPercentage abilityData /= Use.Channel.Max abilityData
scoreboard players operation channelPercentage abilityData < #100 mathf.const


# Check if we are fully charged or not and do the right thing
execute if score Use.Channel.Amount abilityData >= Use.Channel.Max abilityData run function kitpvp:abilities/internal/specific/use/channel/full-channel
execute if score Use.Channel.Amount abilityData < Use.Channel.Max abilityData run scoreboard players operation effect abilityData = Use.Effect abilityData

execute if score Use.Channel.Amount abilityData >= Use.Channel.Max abilityData run function kitpvp:abilities/internal/specific/use/channel/reset-channel-full

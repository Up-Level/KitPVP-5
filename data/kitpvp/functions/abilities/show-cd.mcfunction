scoreboard players operation #temp a1.CDCount = @s a1.CDCount
scoreboard players operation #temp a1.CDCount += #20 mathf.const
scoreboard players operation #temp a1.CDCount /= #20 mathf.const

scoreboard players operation #temp a2.CDCount = @s a2.CDCount
scoreboard players operation #temp a2.CDCount += #20 mathf.const
scoreboard players operation #temp a2.CDCount /= #20 mathf.const

title @s actionbar ["",{"score":{"name":"#temp","objective":"a1.CDCount"}},{"text":"s("},{"score":{"name":"@s","objective":"a1.ChargeCount"}},{"text":"/"},{"score":{"name":"@s","objective":"a1.ChargeMax"}},{"text":") - ("},{"score":{"name":"@s","objective":"a2.ChargeCount"}},{"text":"/"},{"score":{"name":"@s","objective":"a2.ChargeMax"}},{"text":")"},{"score":{"name":"#temp","objective":"a2.CDCount"}},{"text":"s"}]

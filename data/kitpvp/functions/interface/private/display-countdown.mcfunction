title @a[scores={ready=1}] title {"score": {"objective": "temp", "name": "countdown"}}
execute as @a[scores={ready=1}] at @s run playsound minecraft:block.note_block.pling master @s

scoreboard players remove countdown temp 1

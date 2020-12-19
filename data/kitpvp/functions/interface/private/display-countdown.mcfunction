title @a title {"score": {"objective": "temp", "name": "countdown"}}
execute as @a at @s run playsound minecraft:block.note_block.pling master @s

scoreboard players remove countdown temp 1

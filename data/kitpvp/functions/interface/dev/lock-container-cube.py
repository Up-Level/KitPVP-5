radius = 8

text = f'tellraw @s {{"text":"All containers within {radius} blocks of you have been locked.","color":"gold"}}\n'

for x in range(-radius, radius + 1):
    for y in range(-radius, radius + 1):
        for z in range(-radius, radius + 1):
            text += f'data modify block ~{x} ~{y} ~{z} "Lock" set value "Locked"\n'

file = open(f"lock-container-cube-r{radius}.mcfunction", "w")
file.write(text)
file.close()
execute if score green gm.capture-progress matches 5 run title @a[tag=inGame] subtitle {"text": "Green's Flag is being stolen!","color": "green"}
execute if score green gm.capture-progress matches 5 run title @a[tag=inGame] title ""
execute if score green gm.capture-progress matches 5 at @e[tag=flagGreen] run playsound block.anvil.use player @a[tag=inGame,team=green] ~ ~ ~ 1 2 1

scoreboard players add green gm.capture-progress 1
execute if score green gm.capture-progress >= captureTime gm.general run function kitpvp:gamemode/06-ctf/on-steal/green
playsound minecraft:block.note_block.harp player @a[tag=inGame,distance=..2] ~ ~ ~ 0.5 0 0.5

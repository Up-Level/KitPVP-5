execute if score blue gm.capture-progress matches 5 run title @a[tag=inGame] subtitle {"text": "Blue's Flag is being stolen!","color": "blue"}
execute if score blue gm.capture-progress matches 5 run title @a[tag=inGame] title ""
execute if score blue gm.capture-progress matches 5 at @e[tag=flagBlue] run playsound block.anvil.use player @a[tag=inGame,team=blue] ~ ~ ~ 1 2 1

scoreboard players add blue gm.capture-progress 1
execute if score blue gm.capture-progress >= captureTime gm.general run function kitpvp:gamemode/06-ctf/on-steal/blue
playsound minecraft:block.note_block.harp player @a[tag=inGame,distance=..2] ~ ~ ~ 0.5 0 0.5

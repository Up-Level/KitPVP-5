execute if score red gm.capture-progress matches 5 run title @a[tag=inGame] subtitle {"text": "Red's Flag is being stolen!","color": "red"}
execute if score red gm.capture-progress matches 5 run title @a[tag=inGame] title ""
execute if score red gm.capture-progress matches 5 at @e[tag=flagRed] run playsound block.anvil.use player @a[tag=inGame,team=red] ~ ~ ~ 1 2 1

scoreboard players add red gm.capture-progress 1
execute if score red gm.capture-progress >= captureTime gm.general run function kitpvp:gamemode/06-ctf/on-steal/red
playsound minecraft:block.note_block.harp player @a[tag=inGame,distance=..2] ~ ~ ~ 0.5 0 0.5

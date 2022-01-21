execute if score yellow gm.capture-progress matches 5 run title @a[tag=inGame] subtitle {"text": "Yellow's Flag is being stolen!","color": "yellow"}
execute if score yellow gm.capture-progress matches 5 run title @a[tag=inGame] title ""
execute if score yellow gm.capture-progress matches 5 at @e[tag=flagYellow] run playsound block.anvil.use player @a[tag=inGame,team=yellow] ~ ~ ~ 1 2 1

scoreboard players add yellow gm.capture-progress 1
execute if score yellow gm.capture-progress >= captureTime gm.general run function kitpvp:gamemode/06-ctf/on-steal/yellow
playsound minecraft:block.note_block.harp player @a[tag=inGame,distance=..2] ~ ~ ~ 0.5 0 0.5

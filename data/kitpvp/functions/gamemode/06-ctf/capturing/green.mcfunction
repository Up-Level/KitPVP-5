scoreboard players add green gm.capture-progress 1
execute if score green gm.capture-progress >= captureTime gm.general run function kitpvp:gamemode/06-ctf/on-capture/green
playsound minecraft:block.note_block.harp player @a[tag=inGame,distance=..2] ~ ~ ~ 0.5 0 0.5

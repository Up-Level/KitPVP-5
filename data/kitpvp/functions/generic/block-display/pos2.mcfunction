summon marker ~ ~ ~ {Tags:["blockDisplayPos"]}

execute store result score x1 temp run data get entity @e[tag=blockDisplayPos,limit=1] Pos[0]
execute store result score y1 temp run data get entity @e[tag=blockDisplayPos,limit=1] Pos[1]
execute store result score z1 temp run data get entity @e[tag=blockDisplayPos,limit=1] Pos[2]

kill @e[tag=blockDisplayPos]

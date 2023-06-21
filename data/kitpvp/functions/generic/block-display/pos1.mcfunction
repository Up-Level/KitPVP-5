summon marker ~ ~ ~ {Tags:["blockDisplayPos"]}

execute store result score x0 temp run data get entity @e[tag=blockDisplayPos,limit=1] Pos[0]
execute store result score y0 temp run data get entity @e[tag=blockDisplayPos,limit=1] Pos[1]
execute store result score z0 temp run data get entity @e[tag=blockDisplayPos,limit=1] Pos[2]

kill @e[tag=blockDisplayPos]

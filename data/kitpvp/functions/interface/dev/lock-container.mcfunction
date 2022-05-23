# Locks the container in front of the executor
execute anchored eyes store success score lockSuccess temp run data modify block ^ ^ ^1 "Lock" set value "Locked"

execute if score lockSuccess temp matches 1 run tellraw @s {"text":"The container in front of you has been locked.","color":"gold"}
execute if score lockSuccess temp matches 0 run tellraw @s {"text":"Cannot lock the block in front of you.","color":"red"}

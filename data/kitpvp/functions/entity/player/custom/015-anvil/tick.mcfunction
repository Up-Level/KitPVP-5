
execute if score @s entity.state matches 1 unless predicate utilities:in_vehicle run function kitpvp:entity/player/internal/destroy

execute unless score @s entity.state matches 0 run return 0

execute unless predicate utilities:in_water unless predicate utilities:in_lava on passengers if entity @s[type=player] run effect give @s minecraft:resistance 1 255 true

execute if score @s entity.data1 matches 0 run scoreboard players add @s entity.time 1
execute if score @s entity.data1 matches 0 unless predicate utilities:in_water unless predicate utilities:in_lava run scoreboard players add @s entity.data2 1
execute if score @s entity.data1 matches 2 run scoreboard players remove @s entity.time 1

execute if score @s entity.data1 matches 0 if score @s entity.data2 matches 26 unless predicate utilities:in_water unless predicate utilities:in_lava run playsound minecraft:item.shield.break block @a ~ ~ ~ 1 1
execute if score @s entity.data1 matches 0 if score @s entity.data2 matches 56 unless predicate utilities:in_water unless predicate utilities:in_lava run playsound minecraft:item.shield.break block @a ~ ~ ~ 1 .75

# Land Effects
execute if score @s entity.data1 matches 0 if score @s entity.time matches 5.. if entity @s[nbt={OnGround:1b}] run scoreboard players set @s entity.data1 1

execute if score @s entity.data1 matches 1 run function kitpvp:entity/player/internal/get-owner-this
execute if score @s entity.data1 matches 1 as @e[limit=1,tag=found] run function kitpvp:generic/info/get-enemy

execute if score @s entity.data1 matches 1 if score @s entity.data2 matches ..25 as @e[tag=found.enemy,distance=..2] run damage @s 5 minecraft:falling_anvil by @e[limit=1,tag=found] from @e[limit=1,tag=found]
execute if score @s entity.data1 matches 1 if score @s entity.data2 matches ..25 run particle minecraft:block minecraft:anvil ~ ~.4 ~ .7 .1 .7 0. 30 force
execute if score @s entity.data1 matches 1 if score @s entity.data2 matches ..25 run playsound minecraft:block.anvil.land block @a ~ ~ ~ 1 1

execute if score @s entity.data1 matches 1 if score @s entity.data2 matches 26..55 as @e[tag=found.enemy,distance=..2] run damage @s 10 minecraft:falling_anvil by @e[limit=1,tag=found] from @e[limit=1,tag=found]
execute if score @s entity.data1 matches 1 if score @s entity.data2 matches 26..55 run particle minecraft:block minecraft:anvil ~ ~.4 ~ .7 .1 .7 0. 65 force
execute if score @s entity.data1 matches 1 if score @s entity.data2 matches 26..55 run playsound minecraft:block.anvil.land block @a ~ ~ ~ 1.5 .75
execute if score @s entity.data1 matches 1 if score @s entity.data2 matches 26..55 on passengers if entity @s[type=block_display] run data modify entity @s block_state.Name set value "chipped_anvil"

execute if score @s entity.data1 matches 1 if score @s entity.data2 matches 56.. as @e[tag=found.enemy,distance=..2] run damage @s 20 minecraft:falling_anvil by @e[limit=1,tag=found] from @e[limit=1,tag=found]
execute if score @s entity.data1 matches 1 if score @s entity.data2 matches 56.. run particle minecraft:block minecraft:anvil ~ ~.4 ~ .7 .1 .7 0. 100 force
execute if score @s entity.data1 matches 1 if score @s entity.data2 matches 56.. run particle minecraft:crit ~ ~.7 ~ .7 .7 .7 0. 40 force
execute if score @s entity.data1 matches 1 if score @s entity.data2 matches 56.. run playsound minecraft:block.anvil.land block @a ~ ~ ~ 2 .5
execute if score @s entity.data1 matches 1 if score @s entity.data2 matches 56.. on passengers if entity @s[type=block_display] run data modify entity @s block_state.Name set value "damaged_anvil"


execute if score @s entity.data1 matches 1 run scoreboard players set @s entity.time 20

execute if score @s entity.data1 matches 1 run scoreboard players set @s entity.data1 2

execute if score @s entity.data1 matches 2 if score @s entity.time matches 20 on passengers if entity @s[type=player] run ride @s dismount

# Destroy
#execute if score @s entity.state matches 0 if score @s entity.data1 matches 2 if score @s entity.time matches ..0 on passengers if entity @s[type=!player] run ride @s dismount
execute if score @s entity.data1 matches 2 if score @s entity.time matches ..0 on passengers if entity @s[type=!player] run function kitpvp:entity/player/internal/destroy
execute if score @s entity.data1 matches 2 if score @s entity.time matches ..0 run function kitpvp:entity/player/internal/destroy
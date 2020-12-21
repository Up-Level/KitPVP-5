function kitpvp:loadouts/items/armor/tick
function kitpvp:loadouts/items/weapon/tick

function kitpvp:loadouts/items/ability1/tick
function kitpvp:loadouts/items/ability2/tick

function kitpvp:loadouts/items/utility/tick

execute if score @s ability1CDC matches 0 run scoreboard players remove @s ability1CDC 1
execute if score @s ability1CDC matches -1.. run function kitpvp:loadouts/items/ability1/start
execute if score @s ability2CDC matches 0.. run scoreboard players remove @s ability2CDC 1
execute if score @s ability1CDC matches -1 run function kitpvp:loadouts/items/ability2/start

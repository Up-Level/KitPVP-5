# Can change death-related functions in gamemode tick to this function to "override" normal death mechanics
execute if entity @s[tag=capturingRedFlag] run function kitpvp:gamemode/06-ctf/drop-flag/red
execute if entity @s[tag=capturingBlueFlag] run function kitpvp:gamemode/06-ctf/drop-flag/blue
execute if entity @s[tag=capturingGreenFlag] run function kitpvp:gamemode/06-ctf/drop-flag/green
execute if entity @s[tag=capturingYellowFlag] run function kitpvp:gamemode/06-ctf/drop-flag/yellow

tag @s remove capturingRedFlag
tag @s remove capturingBlueFlag
tag @s remove capturingGreenFlag
tag @s remove capturingYellowFlag

function kitpvp:gamemode/utility/death/on-death

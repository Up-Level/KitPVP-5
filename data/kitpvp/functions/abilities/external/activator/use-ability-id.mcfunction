execute if data storage kitpvp:ability-data Id run scoreboard players set Valid abilityData 1

execute if score Valid abilityData matches 1 run function kitpvp:abilities/internal/process-ability

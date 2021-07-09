scoreboard players set @s editLoadout 1

scoreboard players enable @s s.armorT
scoreboard players enable @s s.weaponT

scoreboard players enable @s s.ability1T
scoreboard players enable @s s.ability2T

scoreboard players enable @s s.utilityT

scoreboard players enable @s saveToT
scoreboard players enable @s loadFromT

scoreboard players set @s s.armorT -1
scoreboard players set @s s.weaponT -1

scoreboard players set @s s.ability1T -1
scoreboard players set @s s.ability2T -1

scoreboard players set @s s.utilityT -1

scoreboard players set @s saveToT -1
scoreboard players set @s loadFromT -1

function kitpvp:loadout/edit/edit/edit-items/give

scoreboard players set @s a1.CD -1
scoreboard players set @s a1.CDCount -1

scoreboard players set @s a2.CD -1
scoreboard players set @s a2.CDCount -1

scoreboard players set @s a1.ChargeMax -1
scoreboard players set @s a1.ChargeCount -1

scoreboard players set @s a2.ChargeMax -1
scoreboard players set @s a2.ChargeCount -1

scoreboard players set @s a1.Mode -1

scoreboard players set @s a2.Mode -1

function kitpvp:generic-functions/uuid/get-uuid

function kitpvp:loadouts/items/all/start
scoreboard players set @s giveLoadout 1

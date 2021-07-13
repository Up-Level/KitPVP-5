function kitpvp:loadout/edit/set-normal-from-selected

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

function kitpvp:generic/uuid/get-uuid
scoreboard players set @s a1.useCD 0
scoreboard players set @s a2.useCD 0

function kitpvp:loadout/edit/edit/revoke-edit

function kitpvp:loadout/items/all/start
scoreboard players set @s l.give 1

scoreboard players set @s l.use.arm -1
scoreboard players set @s l.use.wep 0

scoreboard players set @s l.use.a1 0
scoreboard players set @s l.use.a2 3

scoreboard players set @s l.use.util 0

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
function kitpvp:loadout/items/all/give
scoreboard players set @s l.give 1
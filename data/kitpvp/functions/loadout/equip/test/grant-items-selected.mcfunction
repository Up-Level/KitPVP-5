function kitpvp:generic/uuid/get-uuid

function kitpvp:loadout/equip/revoke-items
function kitpvp:loadout/edit/edit/revoke-edit

function kitpvp:entity/player/custom/999-ability-tracker/destroy
function kitpvp:entity/player/custom/999-ability-tracker/create

function kitpvp:abilities/hud-display/external/reset-cd

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

scoreboard players set @s a1.useCD 0
scoreboard players set @s a2.useCD 0

function kitpvp:loadout/items/all/start
function kitpvp:loadout/items/all/give

scoreboard players set @s l.give 1
scoreboard players set @s l.give.time 0

execute at @s run function kitpvp:entity/player/custom/012-kit-tracker/create
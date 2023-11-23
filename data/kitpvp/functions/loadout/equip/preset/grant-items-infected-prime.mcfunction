function kitpvp:generic/uuid/get-uuid

function kitpvp:loadout/equip/revoke-items
function kitpvp:loadout/edit/edit/revoke-edit

function kitpvp:entity/player/custom/999-ability-tracker/destroy
function kitpvp:entity/player/custom/999-ability-tracker/create

function kitpvp:abilities/hud-display/external/reset-cd

scoreboard players set @s l.use.arm -1
scoreboard players set @s l.use.wep 0

scoreboard players set @s l.use.a1 -1
scoreboard players set @s l.use.a2 -1

scoreboard players set @s l.use.util 0

function kitpvp:loadout/items/all/start
function kitpvp:loadout/items/all/give

scoreboard players set @s l.give 1
scoreboard players set @s l.give.time 0
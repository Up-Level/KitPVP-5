function kitpvp:generic/uuid/get-uuid

function kitpvp:loadout/equip/test/revoke-items
function kitpvp:loadout/edit/edit/revoke-edit

function kitpvp:entity/player/custom/999-ability-tracker/destroy
function kitpvp:entity/player/custom/999-ability-tracker/create

function kitpvp:abilities/hud-display/external/reset-cd

function kitpvp:loadout/edit/set-normal-from-selected

function kitpvp:loadout/items/all/start
function kitpvp:loadout/items/all/give

scoreboard players set @s l.give 1
scoreboard players set @s l.give.time 0

execute at @s run function kitpvp:entity/player/custom/012-kit-tracker/create
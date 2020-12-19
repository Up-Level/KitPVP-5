function kitpvp:load/base

function kitpvp:load/scoreboards/loadouts/slots/create-slots

scoreboard objectives remove timePlayed
scoreboard objectives add timePlayed dummy

forceload remove all
forceload add 9976 -24 10024 24

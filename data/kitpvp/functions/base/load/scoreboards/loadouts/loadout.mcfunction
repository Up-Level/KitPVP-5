# Currently Used
# Remove
scoreboard objectives remove l.use.wep
scoreboard objectives remove l.use.wep

scoreboard objectives remove l.use.a1
scoreboard objectives remove l.use.a2

scoreboard objectives remove l.use.util

# Add
scoreboard objectives add l.use.arm dummy
scoreboard objectives add l.use.wep dummy

scoreboard objectives add l.use.a1 dummy
scoreboard objectives add l.use.a2 dummy

scoreboard objectives add l.use.util dummy

# Selected
# Remove
scoreboard objectives remove l.sel.arm
scoreboard objectives remove l.sel.wep

scoreboard objectives remove l.sel.a1
scoreboard objectives remove l.sel.a2

scoreboard objectives remove l.sel.util

# Add
scoreboard objectives add l.sel.arm dummy
scoreboard objectives add l.sel.wep dummy

scoreboard objectives add l.sel.a1 dummy
scoreboard objectives add l.sel.a2 dummy

scoreboard objectives add l.sel.util dummy

# Random stuff

scoreboard objectives remove l.give
scoreboard objectives add l.give dummy

# Lodout editing
scoreboard objectives remove l.e
scoreboard objectives add l.e dummy

scoreboard objectives remove l.e.slotEdit
scoreboard objectives add l.e.slotEdit dummy

scoreboard objectives remove l.e.saveT
scoreboard objectives add l.e.saveT trigger

scoreboard objectives remove l.e.loadT
scoreboard objectives add l.e.loadT trigger

scoreboard objectives remove l.e.armT
scoreboard objectives remove l.e.wepT

scoreboard objectives remove l.e.a1T
scoreboard objectives remove l.e.a2T

scoreboard objectives remove l.e.utilT

scoreboard objectives add l.e.armT trigger
scoreboard objectives add l.e.wepT trigger

scoreboard objectives add l.e.a1T trigger
scoreboard objectives add l.e.a2T trigger

scoreboard objectives add l.e.utilT trigger

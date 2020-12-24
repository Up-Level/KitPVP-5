
# Scoreboard for doing calculations on uuids
scoreboard objectives remove uuid
scoreboard objectives add uuid dummy

# An entities UUID
scoreboard objectives remove uuid.entity0
scoreboard objectives add uuid.entity0 dummy

scoreboard objectives remove uuid.entity1
scoreboard objectives add uuid.entity1 dummy

scoreboard objectives remove uuid.entity2
scoreboard objectives add uuid.entity2 dummy

scoreboard objectives remove uuid.entity3
scoreboard objectives add uuid.entity3 dummy

# An entities owners UUID
scoreboard objectives remove uuid.owner0
scoreboard objectives add uuid.owner0 dummy

scoreboard objectives remove uuid.owner1
scoreboard objectives add uuid.owner1 dummy

scoreboard objectives remove uuid.owner2
scoreboard objectives add uuid.owner2 dummy

scoreboard objectives remove uuid.owner3
scoreboard objectives add uuid.owner3 dummy


# Reset
scoreboard players set 0.0 uuid 0
scoreboard players set 0.1 uuid 0
scoreboard players set 0.2 uuid 0
scoreboard players set 0.3 uuid 0

scoreboard players set 1.0 uuid 0
scoreboard players set 1.1 uuid 0
scoreboard players set 1.2 uuid 0
scoreboard players set 1.3 uuid 0

scoreboard players set out.0 uuid 0
scoreboard players set out.1 uuid 0
scoreboard players set out.2 uuid 0
scoreboard players set out.3 uuid 0

$data modify entity @e[limit=1,tag=abilityTracker] abilities append value {id:$(Id)}
$data modify entity @e[limit=1,tag=abilityTracker] data.abilities[{id:$(Id)}].data set from storage kitpvp:ability-data abilityData
$data modify entity @e[limit=1,tag=abilityTracker] data.abilities[{id:$(Id)}].id 
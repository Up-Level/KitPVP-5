
particle minecraft:soul_fire_flame ~ ~1 ~ 0.4 0.4 0.4 0 100

playsound minecraft:ui.toast.out master @a ~ ~1 ~ 1
playsound minecraft:block.chorus_flower.death master @a ~ ~1 ~ 1 1
playsound minecraft:item.flintandsteel.use master @a ~ ~1 ~ 1 1


tp @s @e[tag=found,limit=1,sort=nearest]
function kitpvp:entity/player-entities/001-tp/destroy

function kitpvp:abilities/spend

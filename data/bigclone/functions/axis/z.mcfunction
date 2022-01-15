#tellraw @a {"text":"z"}
#tellraw @a [{"score":{"name":"mover.localpos.x","objective":"clone"}},{"text":" "},{"score":{"name":"mover.localpos.y","objective":"clone"}},{"text":" "},{"score":{"name":"mover.localpos.z","objective":"clone"}}]
#tellraw @a [{"text":"Iteration: "},{"score":{"name":"iteration","objective":"clone"}}]

scoreboard players add iteration clone 1

scoreboard players operation progress clone = iteration clone
scoreboard players operation progress clone *= #100 mathf.const
scoreboard players operation progress clone /= total clone

tellraw @a [{"score":{"name":"iteration","objective":"clone"}},{"text":"/"},{"score":{"name":"total","objective":"clone"}},{"text":"("},{"score":{"name":"progress","objective":"clone"}},{"text":"%)"}]

function bigclone:mover/begin-chunk
schedule function bigclone:mover/end-chunk 2t

execute if score mover.localpos.z clone < temp clone run schedule function bigclone:axis/add/z 2t
execute if score mover.localpos.z clone < temp clone run schedule function bigclone:axis/z 3t

execute if score mover.localpos.z clone >= temp clone run schedule function bigclone:axis/reset/z 2t
execute if score mover.localpos.z clone >= temp clone run schedule function bigclone:axis/add/y 2t
execute if score mover.localpos.z clone >= temp clone run schedule function bigclone:axis/y 3t

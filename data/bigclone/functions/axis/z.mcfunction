#tellraw @a {"text":"z"}
#tellraw @a [{"score":{"name":"mover.localpos.x","objective":"clone"}},{"text":" "},{"score":{"name":"mover.localpos.y","objective":"clone"}},{"text":" "},{"score":{"name":"mover.localpos.z","objective":"clone"}}]
#tellraw @a [{"text":"Iteration: "},{"score":{"name":"iteration","objective":"clone"}}]

scoreboard players add iteration clone 1

function bigclone:mover/begin-chunk
schedule function bigclone:mover/end-chunk 1t

execute if score mover.localpos.z clone < temp clone run schedule function bigclone:axis/add/z 2t
execute if score mover.localpos.z clone < temp clone run schedule function bigclone:axis/z 3t

execute if score mover.localpos.z clone >= temp clone run schedule function bigclone:axis/reset/z 2t
execute if score mover.localpos.z clone >= temp clone run schedule function bigclone:axis/add/y 2t
execute if score mover.localpos.z clone >= temp clone run schedule function bigclone:axis/y 3t

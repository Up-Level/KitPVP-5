#tellraw @a {"text":"z"}
#tellraw @a [{"score":{"name":"mover.localpos.x","objective":"clone"}},{"text":" "},{"score":{"name":"mover.localpos.y","objective":"clone"}},{"text":" "},{"score":{"name":"mover.localpos.z","objective":"clone"}}]
#tellraw @a [{"text":"Iteration: "},{"score":{"name":"iteration","objective":"clone"}}]

scoreboard players add iteration clone 1

function bigclone:mover/begin-chunk
schedule function bigclone:mover/end-chunk 5t

execute if score mover.localpos.z clone < temp clone run schedule function bigclone:axis/add/z 9t
execute if score mover.localpos.z clone < temp clone run schedule function bigclone:axis/z 10t

execute if score mover.localpos.z clone >= temp clone run schedule function bigclone:axis/reset/z 9t
execute if score mover.localpos.z clone >= temp clone run schedule function bigclone:axis/add/y 9t
execute if score mover.localpos.z clone >= temp clone run schedule function bigclone:axis/y 10t

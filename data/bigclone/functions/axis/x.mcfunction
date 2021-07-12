#tellraw @a {"text":"x"}

function bigclone:axis/reset/y
function bigclone:axis/reset/z

execute if score mover.localpos.x clone < source.scale.x clone run function bigclone:axis/y
execute if score mover.localpos.x clone >= source.scale.x clone run function bigclone:clone-end

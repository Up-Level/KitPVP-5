#tellraw @a {"text":"y"}

execute if score mover.localpos.y clone < source.scale.y clone run function bigclone:axis/z

execute if score mover.localpos.y clone >= source.scale.y clone run function bigclone:axis/add/x
execute if score mover.localpos.y clone >= source.scale.y clone run function bigclone:axis/x

#> mathf:dist-between-points
# 
# Gets the square distance in whole blocks between 2 coordinates.
# 
# @input
#   score i0 mathf.io    Point 1 X coordinate.
#   score i1 mathf.io    Point 1 Y coordinate.
#   score i2 mathf.io    Point 1 Z coordinate.
#   score i3 mathf.io    Point 2 X coordinate.
#   score i4 mathf.io    Point 2 Y coordinate.
#   score i5 mathf.io    Point 2 Z coordinate.
# 
# @output
#   score o0 mathf.io    The squared distance as an int.
# 
# @public
# @context any

# Get differences for each axis
scoreboard players operation i0 mathf.io -= i3 mathf.io
scoreboard players operation i1 mathf.io -= i4 mathf.io
scoreboard players operation i2 mathf.io -= i5 mathf.io

function mathf:vector/sqr-magnitude
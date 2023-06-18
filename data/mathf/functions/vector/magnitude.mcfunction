#> mathf:vector/magnitude
# Gets the magnitude of a vector.
# Credit to https://gaming.stackexchange.com/a/348985
# @input
#   score i0 mathf.io Vector x (Scale 100)
#   score i1 mathf.io Vector y (Scale 100)
#   score i2 mathf.io Vector z (Scale 100)
#  
# @output
#   score o0 mathf.io Magnitude (Scale 100)
# 
# @public
# @context any

function mathf:vector/sqr-magnitude
scoreboard players operation i0 mathf.io = o0 mathf.io
function mathf:sqrt

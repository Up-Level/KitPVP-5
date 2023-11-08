#declare storage gamemodes

data merge storage gamemodes {CurrentGamemode: {}, Gamemodes: [\
{Name:"Template", Settings:{Duration:300, Rounds:3}}, \
{Name:"Deathmatch", Settings:{Duration:300, Rounds:1}}, \
{Name:"Team Deathmatch", Teams:true, Settings:{Duration:300, Rounds:1}}, \
{Name:"Lives", Settings:{Rounds:1}}, \
{Name:"Team Lives", Teams:true, Settings:{Duration:300, Rounds:1}}, \
{Name:"Infected", Settings:{Duration:300, Rounds:1, FirstInfection:290}}, \
{Name:"Capture The Flag", Teams:true, Settings:{Duration:300, Rounds:3, Captures:5, CaptureTime:5}} \
]}

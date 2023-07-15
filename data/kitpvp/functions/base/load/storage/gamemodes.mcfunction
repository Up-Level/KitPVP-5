#declare storage current-gamemode
#declare storage gamemode-00
#declare storage gamemode-01
#declare storage gamemode-02
#declare storage gamemode-03
#declare storage gamemode-04
#declare storage gamemode-05
#declare storage gamemode-06

data merge storage gamemode-00 {Id:0,Name:"Template", Settings:{Duration:300, Rounds:3}}
data merge storage gamemode-01 {Id:1,Name:"Deathmatch", Settings:{Duration:300, Rounds:1}}
data merge storage gamemode-02 {Id:2,Name:"Team Deathmatch", Teams:true, Settings:{Duration:300, Rounds:1}}
data merge storage gamemode-03 {Id:3,Name:"Lives", Settings:{"Rounds":1}}
data merge storage gamemode-04 {Id:4,Name:"Team Lives", Teams:true, Settings:{Duration:300, Rounds:1}}
data merge storage gamemode-05 {Id:5,Name:"Infected", Settings:{Duration:300, Rounds:1, FirstInfection:290}}
data merge storage gamemode-06 {Id:6,Name:"Capture The Flag", Teams:true, Settings:{Duration:300, Rounds:3, Captures:5, CaptureTime:5}}

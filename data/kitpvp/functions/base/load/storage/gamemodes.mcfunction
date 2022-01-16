#declare storage current-gamemode
#declare storage gamemode-00
#declare storage gamemode-01
#declare storage gamemode-02
#declare storage gamemode-03
#declare storage gamemode-04
#declare storage gamemode-05

data merge storage gamemode-00 {Id:1,Name:"Template", Teams:false, Settings:{Duration:300, Rounds:3}}
data merge storage gamemode-01 {Id:1,Name:"Deathmatch", Teams:false, Settings:{Duration:300, Rounds:1}}
data merge storage gamemode-02 {Id:2,Name:"Team Deathmatch", Teams:true, Settings:{Duration:300, Rounds:1}}
data merge storage gamemode-03 {Id:2,Name:"Lives", Teams:false, Settings:{"Rounds":1}}
data merge storage gamemode-04 {Id:2,Name:"Team Lives", Teams:true, Settings:{Duration:300, Rounds:1}}
data merge storage gamemode-05 {Id:2,Name:"Infected", Teams:false, Settings:{Duration:300, Rounds:1, FirstInfection:290}}

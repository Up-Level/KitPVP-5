#declare storage current-gamemode
#declare storage gamemode-01
#declare storage gamemode-02

data merge storage gamemode-01 {Id:1,Name:"Deathmatch",Teams:false,Settings:{"Duration":300,"Rounds":1}}
data merge storage gamemode-02 {Id:2,Name:"Team Deathmatch",Teams:true,Settings:{"Duration":300,"Rounds":1}}

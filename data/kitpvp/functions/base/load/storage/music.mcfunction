
#> Storage containing the names and durations of all songs.
#declare storage music

data merge storage music {Categories: []}

data modify storage music Categories append value {Name: "idk", Songs: []}
data modify storage music Categories[0].Songs append value {Name: "idk1", Duration: 4340}
data modify storage music Categories[0].Songs append value {Name: "idk2", Duration: 2160}
data modify storage music Categories[0].Songs append value {Name: "idk3", Duration: 3340}
data modify storage music Categories[0].Songs append value {Name: "idk4", Duration: 3440}
data modify storage music Categories[0].Songs append value {Name: "idk5", Duration: 3180}

data modify storage music Categories append value {Name: "Ultrakill", Songs: []}
data modify storage music Categories[1].Songs append value {Name: "Ultrakill 1", Duration: 3280}
data modify storage music Categories[1].Songs append value {Name: "Ultrakill 2", Duration: 2960}
data modify storage music Categories[1].Songs append value {Name: "Ultrakill 3", Duration: 3420}

data modify storage music Categories append value {Name: "Jungle", Songs: []}
data modify storage music Categories[2].Songs append value {Name: "Jungle 1", Duration: 4380}
data modify storage music Categories[2].Songs append value {Name: "Jungle 2", Duration: 2300}
data modify storage music Categories[2].Songs append value {Name: "Jungle 3", Duration: 3200}
data modify storage music Categories[2].Songs append value {Name: "Jungle 4", Duration: 4160}
data modify storage music Categories[2].Songs append value {Name: "Jungle 5", Duration: 4320}
data modify storage music Categories[2].Songs append value {Name: "Jungle 6", Duration: 5280}
data modify storage music Categories[2].Songs append value {Name: "Breakcore 1", Duration: 3320}

data modify storage music Categories append value {Name: "Techno House", Songs: []}
data modify storage music Categories[3].Songs append value {Name: "1", Duration: 3120}
data modify storage music Categories[3].Songs append value {Name: "3 Scarface", Duration: 3320}
data modify storage music Categories[3].Songs append value {Name: "9999999999", Duration: 5020}
data modify storage music Categories[3].Songs append value {Name: "HM 1", Duration: 3160}
data modify storage music Categories[3].Songs append value {Name: "tudsgusnrvnbuydh", Duration: 4920}

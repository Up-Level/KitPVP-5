import json

file = open("music.json", "r")
data = json.loads(file.read())
file.close()

string = """# Storage containing the names and durations of all songs.
#declare storage music

data merge storage music {Categories: []}

"""

for i, category in enumerate(data["categories"]):
    string += f'data modify storage music Categories append value {{Name: "{category["name"]}", Songs: []}}\n'
    for song in category["songs"]:
        timeStr = song["duration"].split(":")
        time = (int(timeStr[0]) * 60 + int(timeStr[1])) * 20

        string += f'data modify storage music Categories[{i}].Songs append value {{Name: "{song["name"]}", Duration: {time}}}\n'
    string += "\n"

string = string[:-1]

file = open("music.mcfunction", "w")
file.write(string);
file.close()

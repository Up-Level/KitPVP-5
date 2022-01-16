
item replace entity @s armor.chest with minecraft:leather_chestplate{display: {color: 17664},Unbreakable:1b,ItemType:"armor",Tags:["Bound"],HideFlags:4,Enchantments:[{id:"binding_curse",lvl:1}]} 1

item replace entity @s armor.legs with minecraft:leather_leggings{display: {color: 9145088},Unbreakable:1b,ItemType:"armor",Tags:["Bound"],HideFlags:4,Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Operation:0,UUID:[I;12345,2,1,1],Slot:feet,Name:"generic.armor"}]} 1

item replace entity @s armor.feet with minecraft:leather_boots{display: {color: 17664},Unbreakable:1b,ItemType:"armor",Tags:["Bound"],HideFlags:4,Enchantments:[{id:"feather_falling",lvl:4},{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;12345,1,1,1],Slot:feet},{AttributeName:"generic.armor",Amount:1,Operation:0,UUID:[I;12345,2,1,1],Slot:feet,Name:"generic.armor"}]} 1

effect give @s minecraft:hunger 999999 9 true
effect give @s minecraft:saturation 999999 255 true
effect give @s minecraft:night_vision 999999 0 true
effect give @s minecraft:strength 999999 1 true
effect give @s resistance 999999 0 true
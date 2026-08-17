data remove storage menu:pages pages

data modify storage menu:pages pages set value [\
{id:0, name:"play", page:[{Slot:12, id:"book", components:{"minecraft:custom_data":{ui_item:{open_page:{page:"browser"}}}, "minecraft:item_name":{text:"Browse Lobbies", color:"light_purple"}}}, {Slot:14, id:"command_block", components:{"minecraft:custom_data":{ui_item:{open_page:{page:"lobby_creator"}, cmd:"function menu:pages/lobby_creator/open"}}, "minecraft:item_name":{text:"Create Lobby"}}}, {Slot:8, id:"test_instance_block", components:{"minecraft:custom_data":{ui_item:{open_page:{page:"player_settings"}, cmd:"function menu:pages/player_settings/open"}}, "minecraft:item_name":{text:"Settings"}}}]}\
]
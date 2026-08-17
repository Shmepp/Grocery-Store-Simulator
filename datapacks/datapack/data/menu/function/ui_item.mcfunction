execute if items entity @s player.cursor *[custom_data~{ui_item:{}}] run function menu:ui_item/get_from_cursor
execute unless items entity @s player.cursor *[custom_data={ui_item:{}}] run data modify storage menu:temp item set from entity @s Inventory[{components:{"minecraft:custom_data":{ui_item:{}}}}]
execute unless data storage menu:temp item run data modify storage menu:temp item set from entity @s equipment.offhand

data modify storage menu:temp data set from storage menu:temp item.components."minecraft:custom_data".ui_item
clear @s *[custom_data~{ui_item:{}}]

execute if data storage menu:temp data{close_page:true} run inventory @s close
execute if data storage menu:temp data.open_page.page run function menu:open_page with storage menu:temp data.open_page
execute if data storage menu:temp data.open_page.data unless data storage menu:temp data.open_page.page run data modify storage menu:temp page set from storage menu:temp data.open_page.data
execute if data storage menu:temp data.open_page.data unless data storage menu:temp data.open_page.page run function menu:utils/copy_to_echest
execute if data storage menu:temp data.cmd at @s run function menu:ui_item/run_cmd with storage menu:temp data

data remove storage menu:temp item
data remove storage menu:temp data


execute at @s run playsound block.note_block.hat
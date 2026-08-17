execute as @e[type=item, nbt={Item:{components:{"minecraft:custom_data":{ui_item:{}}}}}] run data modify entity @s PickupDelay set value 0

execute as @a[tag=!ignore_ui] if items entity @s player.cursor *[custom_data~{ui_item:{}}] run function menu:ui_item
execute as @a[tag=!ignore_ui] if data entity @s Inventory[{components:{"minecraft:custom_data":{ui_item:{}}}}] run function menu:ui_item


execute as @a[scores={use_item=1..}, nbt={SelectedItem:{components:{"minecraft:custom_data":{play_menu_item:true}}}}] run function menu:item/play_item
scoreboard players reset @a use_item

execute as @e[type=item, nbt={Item:{components:{"minecraft:custom_data":{give_back:true}}}}] run function menu:give_back
execute as @e[type=item, nbt={Item:{components:{"minecraft:custom_data":{give_back:true}}}}] on origin run tag @s add dropped
tag @e remove dropped
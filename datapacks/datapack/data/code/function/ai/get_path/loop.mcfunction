data modify entity @n[tag=ai] data.path append from entity @s Pos
kill @s
scoreboard players set next math 999999999
scoreboard players operation next math < @e[type=marker, tag=astar] astar.step
execute as @e[type=marker,tag=astar] if score @s astar.step = next math at @s run function code:ai/get_path/loop

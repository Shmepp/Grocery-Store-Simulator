data remove entity @s data.path
tag @s add ai
#as ai at target
execute if function astar:_ at @s as @n[type=marker,tag=astar,sort=nearest] run function code:ai/get_path/loop
tag @s remove ai
scoreboard players reset next math
execute if data entity @s data.path[0] run return 1
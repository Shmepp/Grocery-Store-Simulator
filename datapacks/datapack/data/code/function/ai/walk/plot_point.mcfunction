scoreboard players operation .search ai.id = @s ai.id
kill @n[tag=ai.node, predicate=code:match_ai]
execute unless data entity @s data.path[0] run return run function code:ai/walk/finish
summon marker ~ ~ ~ {Tags:["ai.node", "cleanup", "new"]}
scoreboard players operation @n[tag=new] ai.id = @s ai.id
scoreboard players operation @n[tag=new] instance.id = @s instance.id
data modify entity @n[tag=new] Pos set from entity @s data.path[0]
data remove entity @s data.path[0]
tag @n[tag=new] remove new
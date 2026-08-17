scoreboard players operation .search ai.id = @s ai.id
execute positioned ~ ~.5 ~ if entity @n[type=marker, tag=ai.node, predicate=code:match_ai, distance=...2] run function code:ai/walk/plot_point
execute facing entity @n[tag=ai.node,predicate=code:match_ai] feet positioned 0.0 0 0.0 rotated ~ 0 run summon marker ^ ^ ^.1 {Tags:["force_marker"]}
execute facing entity @n[tag=ai.node,predicate=code:match_ai] feet run rotate @s ~ 0 
data modify entity @s Motion set from entity @n[tag=force_marker] Pos
kill @n[type=marker, tag=force_marker]
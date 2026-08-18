scoreboard players operation .search instance.id = @s instance.id
tag @n[type=marker, tag=instance.origin, predicate=code:match_instance] add match
execute at @n[tag=match] run tp ~5 ~1 ~5
execute at @n[tag=match] run forceload remove ~ ~ ~250 ~250
tag @s remove player.joining
execute at @s unless entity @a[predicate=code:match_instance, distance=.1..] as @n[tag=match] at @s run function code:game/open
tag @n[tag=match] remove match
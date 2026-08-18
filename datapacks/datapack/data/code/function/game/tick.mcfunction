scoreboard players operation .search instance.id = @s instance.id
execute unless entity @a[predicate=code:match_instance] run return fail
execute as @n[tag=instance.door,predicate=code:match_instance] at @s run function code:game/tick/door
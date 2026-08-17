tp @e[tag=cleanup.silent, predicate=code:match_instance] ~ ~-100 ~
kill @e[tag=cleanup, predicate=code:match_instance]

scoreboard players set @s instance.store_open 0
tag @e[tag=instance.parking, tag=instance.parking.taken, predicate=code:match_instance] remove instance.parking.taken
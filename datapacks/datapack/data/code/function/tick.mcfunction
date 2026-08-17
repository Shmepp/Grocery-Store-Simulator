execute as @e[tag=instance.init] at @s run function code:instance/new/init
execute as @a at @s run function code:player/tick
execute as @e[tag=instance.origin] run function code:game/tick
execute as @e[tag=ai.walking] at @s run function code:ai/walk/tick
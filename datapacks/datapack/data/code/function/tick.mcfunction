execute as @e[tag=instance.init] at @s run function code:instance/new/init
execute as @a at @s run function code:player/tick
execute as @e[tag=instance.origin] at @s if loaded ~ ~ ~ run function code:game/tick
execute as @e[tag=ai.walking] at @s run function code:ai/walk/tick
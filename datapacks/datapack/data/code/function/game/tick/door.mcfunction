execute unless entity @s[tag=instance.door.open] if entity @e[tag=!instanced,distance=..4, tag=!aj.global.entity] run return run function code:game/tick/door/open
execute if entity @e[tag=!instanced,distance=..4, tag=!aj.global.entity] run return fail
execute unless entity @s[tag=!instance.door.open] run function code:game/tick/door/close
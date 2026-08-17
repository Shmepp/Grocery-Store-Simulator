tag @s remove instance.init
place template code:store_size_1
scoreboard players operation @e[dx=200,dy=20,dz=200, tag=instanced] instance.id = @s instance.id
forceload remove ~ ~ ~150 ~100
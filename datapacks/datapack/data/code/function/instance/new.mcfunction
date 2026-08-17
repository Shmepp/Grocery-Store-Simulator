scoreboard players operation @s instance.id = @s player.id
scoreboard players set z math 400
scoreboard players operation z math *= @s instance.id
execute store result storage code:temp macro.z int 1 run scoreboard players get z math
execute store result storage code:temp macro.z2 int 1 run scoreboard players add z math 100
scoreboard players reset z math
function code:instance/new/marker with storage code:temp macro
data remove storage code:temp macro
scoreboard players operation @n[tag=instance.origin,tag=new,type=marker] instance.id = @s instance.id
tag @n[tag=new,tag=instance.origin,type=marker] remove new
tag @s add player.join_instance
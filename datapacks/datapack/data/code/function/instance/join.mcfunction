#add player.join_instance tag to run this function. DO NOT CALL DIRECTLY
tag @s remove player.join_instance
execute if entity @s[tag=player.joining] run return fail
scoreboard players set z math 400
scoreboard players operation z math *= @s instance.id
execute store result storage code:temp macro.z int 1 run scoreboard players get z math
execute store result storage code:temp macro.z2 int 1 run scoreboard players add z math 250
scoreboard players reset z math
function code:instance/join/forceload with storage code:temp macro
data remove storage code:temp macro
tag @s add player.joining
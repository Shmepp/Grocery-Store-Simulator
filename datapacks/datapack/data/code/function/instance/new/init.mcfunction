tag @s remove instance.init
place template code:store_size_1
scoreboard players operation @e[dx=200,dy=20,dz=200, tag=instanced] instance.id = @s instance.id
forceload remove ~ ~ ~150 ~100
scoreboard players operation .search instance.id = @s instance.id
execute at @n[tag=instance.door, type=marker, predicate=code:match_instance] run function aj:front_door/summon {args:{}}
execute at @n[tag=instance.garage, type=marker, predicate=code:match_instance] run function aj:garage/summon {args:{}}
execute at @n[tag=instance.computer, type=marker, predicate=code:match_instance] run summon item_display ~ ~.5 ~ {item:{id:"stick", components:{item_model:"gss:computer"}}, transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1f, 1f, 1f], translation: [0.0f, 0.0f, 0.0f]}, brightness:{block:15,sky:15}}
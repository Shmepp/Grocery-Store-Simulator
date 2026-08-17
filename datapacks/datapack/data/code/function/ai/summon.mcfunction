execute store result storage code:temp macro.i int 1 run random value 0..1974
summon mannequin ~ ~ ~ {hide_description:1b, Tags:["new", "test_mannequin", "cleanup", "cleanup.silent"], CustomNameVisible:1b}
function code:ai/summon/data with storage code:temp macro
data remove storage code:temp macro
data modify entity @n[type=mannequin,tag=new] profile set from storage code:temp name
data modify entity @n[type=mannequin,tag=new] CustomName set from storage code:temp name
scoreboard players add .max ai.id 1
scoreboard players operation @n[type=mannequin,tag=new] ai.id = .max ai.id
scoreboard players operation @n[type=mannequin,tag=new] instance.id = @s instance.id
tag @n[type=mannequin,tag=new] remove new
data remove storage code:temp name
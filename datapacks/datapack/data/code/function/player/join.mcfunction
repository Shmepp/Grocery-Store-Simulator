execute unless score @s player.id matches 1.. run function code:player/assign_id

scoreboard players reset @s instance.id
tag @s remove player.join_instance
tag @s remove player.joining

scoreboard players set @s player.left 0
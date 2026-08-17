execute unless score @s player.left matches 0 run function code:player/join
execute if score @s player.death matches 1.. run function code:player/death
execute if entity @s[tag=player.joining] run function code:instance/join/tp
execute if entity @s[tag=player.join_instance] run function code:instance/join
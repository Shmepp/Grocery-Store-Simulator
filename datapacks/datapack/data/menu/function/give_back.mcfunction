execute store result score val1 math run data get entity @s Age
execute if score val1 math matches 2.. run kill @s

data modify entity @s PickupDelay set value 0
data modify entity @s Owner set from entity @s Thrower
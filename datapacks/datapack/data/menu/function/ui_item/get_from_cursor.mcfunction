setblock 0 -64 0 yellow_shulker_box
item replace block 0 -64 0 container.0 from entity @s player.cursor
data modify storage menu:temp item set from block 0 -64 0 Items[0]
setblock 0 -64 0 air
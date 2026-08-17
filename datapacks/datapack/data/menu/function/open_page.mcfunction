$data modify storage menu:temp temp.data set from storage menu:pages pages[{name:"$(page)"}]
data modify storage menu:temp page set from storage menu:temp temp.data.page
function menu:utils/copy_to_echest
execute store result score @s page run data get storage menu:temp temp.data.id
data remove storage menu:temp page
data remove storage menu:temp temp
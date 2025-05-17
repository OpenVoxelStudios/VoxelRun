execute as @a at @s positioned 1000 ~ 1000 if entity @s[distance=..70,tag=!dev] run function voxelrun:lobby/border
execute as @n[tag=start_button,tag=lobby,tag=active] at @s if data entity @s interaction run function voxelrun:lobby/start/button
data remove entity @n[tag=start_button,tag=lobby] interaction
execute if score @s platform matches 0.. run scoreboard players remove @s platform 1
execute unless score @s platform matches 0.. if entity @s[tag=platform.respawn] run scoreboard players remove @s platform 1

execute if score @s platform matches 10 run function voxelrun:platform/modes/3
execute if score @s platform matches 0 run function voxelrun:platform/break

execute if score @s platform matches ..-50 run function voxelrun:platform/modes/1
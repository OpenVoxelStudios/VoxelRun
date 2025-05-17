execute if score @s acid_timer matches 7.. run return run function voxelrun:game/death

particle dust{color:[0,1,0],scale:3.5} ~ ~0.95 ~ 0.25 0.5 0.25 0 5 force @a
particle dust{color:[0,1,0],scale:3.5} ~ ~0.95 ~ 0.25 0.5 0.25 0 15 normal @a
particle minecraft:campfire_cosy_smoke ~ ~-0.95 ~ 0.35 0.5 0.35 0 5 force @a
particle minecraft:campfire_cosy_smoke ~ ~-0.95 ~ 0.35 0.5 0.35 0 5 normal @a

scoreboard players add @s acid_timer 1
playsound block.lava.extinguish master @a ~ ~ ~ 0.6

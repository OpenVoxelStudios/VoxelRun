function voxelrun:platform/modes/2

scoreboard players set .math game 3
scoreboard players operation @s platform /= .math game

playsound minecraft:item.firecharge.use master @a ~ ~ ~
particle flame ~ ~ ~ 0.2 0.2 0.2 0 10 normal @a
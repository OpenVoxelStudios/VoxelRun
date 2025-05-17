execute if entity @s[tag=platform.breaking,tag=platform.size.1] at @a[tag=!dev,distance=..1.5,dx=.5,dy=0.25,dz=.5] if score @s platform matches 5..10 run particle angry_villager ~ ~-0.5 ~ 0.1 0 0.1 0 1
execute if entity @s[tag=platform.breaking,tag=platform.size.2] at @a[tag=!dev,distance=..3,dx=1,dy=0.25,dz=1] if score @s platform matches 5..10 run particle angry_villager ~ ~-0.5 ~ 0.1 0 0.1 0 1
execute if entity @s[tag=platform.breaking,tag=platform.size.3] at @a[tag=!dev,distance=..5,dx=1.5,dy=0.25,dz=1.5] if score @s platform matches 5..10 run particle angry_villager ~ ~-0.5 ~ 0.1 0 0.1 0 1


execute if entity @s[tag=platform.breaking] run return fail


execute if entity @s[tag=platform.size.1] at @a[tag=!dev,distance=..1.5,dx=.5,dy=0.25,dz=.5] run particle cloud ~ ~-0.25 ~ 0.1 0 0.1 0 3
execute if entity @s[tag=platform.size.2] at @a[tag=!dev,distance=..3,dx=1,dy=0.25,dz=1] run particle cloud ~ ~-0.25 ~ 0.1 0 0.1 0 3
execute if entity @s[tag=platform.size.3] at @a[tag=!dev,distance=..5,dx=1.5,dy=0.25,dz=1.5] run particle cloud ~ ~-0.25 ~ 0.1 0 0.1 0 3

function voxelrun:platform/modes/2

playsound minecraft:block.hanging_sign.step master @a ~ ~ ~
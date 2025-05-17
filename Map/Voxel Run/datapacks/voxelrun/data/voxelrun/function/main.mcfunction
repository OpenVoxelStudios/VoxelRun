tag @a[scores={leave=1..}] remove joined_world
execute as @a[tag=!joined_world,tag=!dev] at @s run function voxelrun:join

effect give @a saturation infinite 255 true
effect give @a resistance infinite 255 true

## LOBBY
function voxelrun:lobby/tick
function voxelrun:lobby/credits/tick

## GAME
execute as @e[tag=platform.breaking] at @s run function voxelrun:platform/tick
execute as @a[scores={cooldown.launch=1..}] run scoreboard players remove @s cooldown.launch 1

# Ball Item
execute as @e[type=snowball,tag=!ball] at @s run function voxelrun:item/ball/init
execute as @e[type=marker,tag=ball.marker] at @s unless predicate voxelrun:ball_passenger run function voxelrun:item/ball/hit

# Prevent Item Drop
execute as @e[type=item] run data merge entity @s {PickupDelay:0,pickup:2}
execute as @e[type=item] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item] at @s on origin run tp @n[type=item] @s


execute as @a[team=alive,tag=!dev] at @s positioned ~ 0 ~ if entity @s[distance=..9] run tag @s add acid_dying
execute as @a[tag=acid_dying,team=alive,tag=!dev] at @s run function voxelrun:game/acid

execute as @a[team=dead,tag=!dev] at @s positioned 0 ~ 0 if entity @s[distance=34..150] run tp @s 0 41 0

function voxelrun:game/end_check

execute if score game_active game matches 1.. if score start_timer game matches 1.. run return run function voxelrun:game/start_timer
execute as @e[tag=platform,tag=platform.size.1] at @s positioned ~-0.5 ~ ~-0.5 if entity @a[team=!dead,tag=!dev,dx=.05,dy=0.25,dz=.025] run function voxelrun:platform/collided
execute as @e[tag=platform,tag=platform.size.2] at @s positioned ~-1.5 ~ ~-1.5 if entity @a[team=!dead,tag=!dev,distance=..5,dx=1,dy=0.25,dz=1] run function voxelrun:platform/collided
execute as @e[tag=platform,tag=platform.size.3] at @s positioned ~-1.5 ~ ~-1.5 if entity @a[team=!dead,tag=!dev,distance=..5,dx=2,dy=0.25,dz=2] run function voxelrun:platform/collided

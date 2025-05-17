team join lobby @a[tag=!dev]
tp @a[tag=!dev] 1000 1 1000 0 0
execute as @e[tag=platform] at @s run function voxelrun:platform/reset
function voxelrun:lobby/start/reset_2
function voxelrun:lobby/leaderboard/display
schedule clear voxelrun:reset
schedule clear voxelrun:lobby/start/reset_2
gamemode adventure @a[tag=!dev]
clear @a[tag=!dev]
effect give @a saturation infinite 255 true
effect give @a instant_health 1 255 true
effect give @a resistance infinite 255 true
effect give @a regeneration 1 255 true
scoreboard players set game_active game 0
scoreboard players set start_timer game 0

scoreboard objectives setdisplay sidebar leaderboard.display

forceload add 1000 1000
forceload add 0 0
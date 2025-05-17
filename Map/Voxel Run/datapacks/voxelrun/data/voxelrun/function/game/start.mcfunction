function voxelrun:reset
function voxelrun:lobby/start/game_active

execute as @a[tag=dev] run team join lobby @s
team join alive @a[tag=!dev]
team modify alive collisionRule never
team modify alive friendlyFire false

scoreboard players set game_active game 1
function voxelrun:platform/reset
setblock 0 40 0 barrier
tp @a[team=alive] 0 42 0
gamemode adventure @a[team=alive]

schedule function voxelrun:item/ball/scheduled 15s
execute as @a[team=alive] run function voxelrun:item/launch/give {amount:5}

scoreboard players set start_timer game 200
scoreboard players reset @a acid_timer
schedule clear voxelrun:lobby/leaderboard/display
scoreboard objectives setdisplay sidebar

function voxelrun:platform/reset
execute as @a[team=alive,tag=!dev] run attribute @s minecraft:jump_strength base set 0
effect give @a[team=alive] slowness 2 20 true
schedule function voxelrun:game/give_jump 2s
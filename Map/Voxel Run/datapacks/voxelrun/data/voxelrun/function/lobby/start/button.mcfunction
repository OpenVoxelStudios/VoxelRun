execute if score game_active game matches 1 run return run function voxelrun:lobby/start/game_active

execute store result score player_amount lobby if entity @a[team=lobby,tag=!dev]
execute if score player_amount lobby matches 0 run return run function voxelrun:lobby/start/0_players
#execute if score player_amount lobby matches 0..1 run return run function voxelrun:lobby/start/not_enough_player

execute if entity @s[tag=!game_starting] run scoreboard players set start_timer lobby 6
execute if entity @s[tag=!game_starting] run function voxelrun:lobby/start/1second

execute if entity @s[tag=game_starting] run return run function voxelrun:lobby/start/reset

tag @s add game_starting
data remove entity @s interaction
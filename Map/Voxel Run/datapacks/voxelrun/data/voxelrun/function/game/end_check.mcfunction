execute store result score player_amount game if entity @a[tag=!dev,team=!lobby]
execute store result score alive_amount game if entity @a[tag=!dev,team=alive]
execute store result score dead_amount game if entity @a[tag=!dev,team=dead]

execute if score game_active game matches 0 run return fail
execute if score alive_amount game matches 1 if score player_amount game matches 1 run return fail

execute if score alive_amount game matches ..1 run function voxelrun:game/end
execute if score player_amount game matches ..1 run function voxelrun:game/end
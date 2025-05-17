scoreboard players remove start_timer game 1

scoreboard players set .math game 20
scoreboard players operation formatted_timer game = start_timer game
scoreboard players operation formatted_timer game /= .math game

execute if score formatted_timer game matches 6.. run title @a[team=!lobby] actionbar [{"text":"Starting in ","color":"aqua"},{"score":{"name":"formatted_timer","objective":"game"},"color":"green"},{"text":"s","color":"green"}]
execute if score formatted_timer game matches 4..5 run title @a[team=!lobby] actionbar [{"text":"Starting in ","color":"aqua"},{"score":{"name":"formatted_timer","objective":"game"},"color":"gold"},{"text":"s","color":"gold"}]
execute if score formatted_timer game matches 1..3 run title @a[team=!lobby] actionbar [{"text":"Starting in ","color":"aqua"},{"score":{"name":"formatted_timer","objective":"game"},"color":"red"},{"text":"s","color":"red"}]
execute if score formatted_timer game matches 0 run title @a[team=!lobby] actionbar [{"text":"Starting now!","color":"aqua"}]


execute unless score start_timer game matches 1 run return fail

execute as @a[team=!lobby] at @s run playsound voxelrun:voxelrun ambient @s ~ ~ ~ 0.5
execute store result score alive_amount game if entity @a[tag=!dev,team=alive]

execute if score alive_amount game matches ..2 run return run schedule function voxelrun:game/deathmatch 20s replace
schedule function voxelrun:game/deathmatch 73.5s replace
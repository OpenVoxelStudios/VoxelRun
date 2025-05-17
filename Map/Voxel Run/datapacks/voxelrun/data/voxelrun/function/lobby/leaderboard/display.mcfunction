schedule function voxelrun:lobby/leaderboard/display 5s

execute unless entity @a[scores={leaderboard=1..}] run return run scoreboard objectives setdisplay sidebar

scoreboard players reset * leaderboard.display

scoreboard objectives modify leaderboard.display displayname {"text": " Wins Leaderboard ","color":"gold"}
scoreboard objectives modify leaderboard.display numberformat styled {"color":"white"}

scoreboard players set $0 leaderboard.display 0
scoreboard players display name $0 leaderboard.display ""
scoreboard players display numberformat $0 leaderboard.display blank

scoreboard players set $1 leaderboard.display -1
scoreboard players display name $1 leaderboard.display ""
scoreboard players display numberformat $1 leaderboard.display fixed {"text": "openvoxel.studio  ","color":"gold"}

execute as @a[scores={leaderboard=1..}] run scoreboard players operation @s leaderboard.display = @s leaderboard

scoreboard objectives setdisplay sidebar leaderboard.display
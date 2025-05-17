schedule function voxelrun:reset 10s
scoreboard players set game_active game 0

title @a times 2 188 10
stopsound @a ambient voxelrun:voxelrun
schedule clear voxelrun:game/deathmatch

execute if score player_amount game matches 1 run title @a title {"text":"You Lost","color":"red"}
execute if score player_amount game matches 1 run return run title @a subtitle {"text":"Playing alone isnt fun... Invite friends!","color":"white"}


title @a[team=dead] title {"text":"You Lost","color":"red"}
title @a[team=dead] subtitle [{"selector":"@p[team=alive]","color":"gold"},{"text":" Has Won!","color":"gold"}]

title @a[team=alive] title {"text":"Victory","color":"gold"}

scoreboard players add @a[team=alive] leaderboard 1
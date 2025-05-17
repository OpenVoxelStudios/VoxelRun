kill @e[tag=lobby_border]
summon marker 1000 ~1 1000 {Tags:["lobby_border"]}

execute positioned 1000 ~ 1000 if entity @s[distance=..26.75] run return fail

execute positioned 1000 ~1.25 1000 facing entity @s eyes rotated ~ 0 if block ^ ^ ^32 air positioned ^ ^ ^32 run tp @n[tag=lobby_border] ~ ~ ~
execute positioned 1000 ~1.25 1000 facing entity @s eyes rotated ~ 0 if block ^ ^ ^32.5 air positioned ^ ^ ^32.5 run tp @n[tag=lobby_border] ~ ~ ~
execute positioned 1000 ~1.25 1000 facing entity @s eyes rotated ~ 0 if block ^ ^ ^33 air positioned ^ ^ ^33 run tp @n[tag=lobby_border] ~ ~ ~

execute at @n[tag=lobby_border] facing 1000 ~ 1000 run particle dust{color:[1,0.125,0.25],scale:1.5} ^ ^ ^ 0.125 0.125 0.125 0 2 force @s[distance=..7.5]
execute at @n[tag=lobby_border] facing 1000 ~ 1000 run particle dust{color:[1,0.125,0.25],scale:1.5} ^0.5 ^ ^ 0.125 0.125 0.125 0 2 force @s[distance=..7.5]
execute at @n[tag=lobby_border] facing 1000 ~ 1000 run particle dust{color:[1,0.125,0.25],scale:1.5} ^-0.5 ^ ^ 0.125 0.125 0.125 0 2 force @s[distance=..7.5]
execute at @n[tag=lobby_border] facing 1000 ~ 1000 run particle dust{color:[1,0.125,0.25],scale:1.5} ^ ^.5 ^ 0.125 0.125 0.125 0 2 force @s[distance=..7.5]
execute at @n[tag=lobby_border] facing 1000 ~ 1000 run particle dust{color:[1,0.125,0.25],scale:1.5} ^ ^-0.5 ^ 0.125 0.125 0.125 0 2 force @s[distance=..7.5]

execute positioned 1000 ~ 1000 unless entity @s[distance=32.75..67.5] run return fail

#tp @s 1000 1 1000
execute at @n[tag=lobby_border] facing 1000 ~ 1000 run tp @s ^ ^-1 ^2.5
execute at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.5
title @s actionbar {"text":"Error | Out of Bounds","color":"red"}

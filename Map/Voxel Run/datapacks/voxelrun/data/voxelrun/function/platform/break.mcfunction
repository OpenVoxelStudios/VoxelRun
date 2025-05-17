scoreboard players reset @s platform

execute if entity @s[tag=platform.size.1] run data merge entity @s {transformation:{scale:[0f,0f,0f],translation:[0f,-2.5f,-0f]},interpolation_duration:5,start_interpolation:0}
execute if entity @s[tag=platform.size.1] run fill ~ ~-0.5 ~ ~ ~-0.5 ~ air replace barrier

execute if entity @s[tag=platform.size.2] run data merge entity @s {transformation:{scale:[0f,0f,0f],translation:[-0.5f,-2.5f,-0.5f]},interpolation_duration:5,start_interpolation:0}
execute if entity @s[tag=platform.size.2] run fill ~-1 ~-0.5 ~-1 ~ ~-0.5 ~ air replace barrier

execute if entity @s[tag=platform.size.3] run data merge entity @s {transformation:{scale:[0f,0f,0f],translation:[0f,-2.5f,0f]},interpolation_duration:5,start_interpolation:0}
execute if entity @s[tag=platform.size.3] run fill ~1 ~-0.5 ~1 ~-1 ~-0.5 ~-1 air replace barrier
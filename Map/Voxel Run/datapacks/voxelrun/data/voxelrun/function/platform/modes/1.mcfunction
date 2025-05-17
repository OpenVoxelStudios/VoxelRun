execute if entity @s[tag=platform.size.1] run data merge entity @s {transformation:{scale:[0.33f,0.33f,0.33f],translation:[0f,0.33f,0f]},interpolation_duration:5,start_interpolation:0}
execute if entity @s[tag=platform.size.1] run fill ~ ~-0.5 ~ ~ ~-0.5 ~ barrier replace air

execute if entity @s[tag=platform.size.2] run data merge entity @s {transformation:{scale:[0.66f,0.66f,0.66f],translation:[-0.5f, 0.18f, -0.5f]},interpolation_duration:5,start_interpolation:0}
execute if entity @s[tag=platform.size.2] run fill ~-1 ~-0.5 ~-1 ~ ~-0.5 ~ barrier replace air

execute if entity @s[tag=platform.size.3] run data merge entity @s {transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f]},interpolation_duration:5,start_interpolation:0}
execute if entity @s[tag=platform.size.3] run fill ~1 ~-0.5 ~1 ~-1 ~-0.5 ~-1 barrier replace air

data merge entity @s {item:{components:{"minecraft:custom_model_data":{strings:["platform_0"]}}}}
scoreboard players reset @s platform
tag @s remove platform.breaking
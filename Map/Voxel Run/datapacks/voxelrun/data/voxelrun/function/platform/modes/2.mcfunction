tag @s add platform.breaking
scoreboard players operation @s platform = disappear_time config

execute if entity @s[tag=platform.size.1] run data merge entity @s {transformation:{translation:[0,0.33,0]}}
execute if entity @s[tag=platform.size.2] run data merge entity @s {transformation:{translation:[-0.5f, 0.18f, -0.5f]}}
execute if entity @s[tag=platform.size.3] run data merge entity @s {transformation:{translation:[0,0,0]}}

data merge entity @s {item:{components:{"minecraft:custom_model_data":{strings:["platform_1"]}}}}

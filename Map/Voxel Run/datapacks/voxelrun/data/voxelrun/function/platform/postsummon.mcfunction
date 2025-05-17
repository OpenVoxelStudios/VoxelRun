execute as @e[tag=platform.new] if entity @s[tag=platform.size.1] run data merge entity @s {transformation: {scale: [0.33f, 0.33f, 0.33f], translation: [0f, 0.33f, 0f]}}
execute as @e[tag=platform.new] if entity @s[tag=platform.size.2] run data merge entity @s {transformation: {scale: [0.66f, 0.66f, 0.66f], translation: [-0.5f, 0.18f, -0.5f]}}
tag @e[tag=platform.new] remove platform.new
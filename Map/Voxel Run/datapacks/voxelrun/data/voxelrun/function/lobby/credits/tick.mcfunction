execute as @e[tag=credits.ovs] if data entity @s interaction on target run tellraw @s [{"text": "OpenVoxel Studios","color":"gold","bold":true},{"text": " - ","color":"white","bold":false},{"text": "openvoxel.studio","color":"aqua","bold":false,"click_event":{"action":"open_url","url":"https://openvoxel.studio"},"hover_event":{"action":"show_text","value":[{"text":"Open Link","color":"aqua"}]}}]

execute as @e[tag=credits.sammy] if data entity @s interaction on target run tellraw @s [{"text":"Sammy3D","bold":true,"color":"dark_purple"},{"text":" - ","color":"white","bold":false},{"text": "youtube.com/@Sammy3D","color":"aqua","bold":false,"click_event":{"action":"open_url","url":"https://youtube.com/@Sammy3D"},"hover_event":{"action":"show_text","value":[{"text":"Open Link","color":"aqua"}]}}]

execute as @e[tag=credits.kubik] if data entity @s interaction on target run tellraw @s [{"text":"Kodeur_Kubik","bold":true,"color":"green"},{"text":" - ","color":"white","bold":false},{"text": "kodeurkubik.github.io","color":"aqua","bold":false,"click_event":{"action":"open_url","url":"https://kodeurkubik.github.io"},"hover_event":{"action":"show_text","value":[{"text":"Open Link","color":"aqua"}]}}]

execute as @e[tag=credits.berry] if data entity @s interaction on target run tellraw @s [{"text":"ChoosingBerry","bold":true,"color":"blue"},{"text":" - ","color":"white","bold":false},{"text": "youtube.com/@choosingberry","color":"aqua","bold":false,"click_event":{"action":"open_url","url":"https://youtube.com/@choosingberry"},"hover_event":{"action":"show_text","value":[{"text":"Open Link","color":"aqua"}]}}]

execute as @e[tag=credits.cryptic] if data entity @s interaction on target run tellraw @s [{"text":"Crypticknightv1","bold":true,"color":"aqua"},{"text":" - ","color":"white","bold":false},{"text": "youtube.com/@CrypticKnightv1","color":"aqua","bold":false,"click_event":{"action":"open_url","url":"https://youtube.com/@CrypticKnightv1"},"hover_event":{"action":"show_text","value":[{"text":"Open Link","color":"aqua"}]}}]

execute as @e[tag=credits] on target run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.7
execute as @e[tag=credits] if data entity @s interaction run data remove entity @s interaction

execute as @e[tag=player_head] at @s facing entity @p eyes run rotate @s ~ 0

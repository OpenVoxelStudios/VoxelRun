schedule function voxelrun:lobby/start/1second 1s
execute if score start_timer lobby matches ..1 run schedule function voxelrun:lobby/start/1second 0.5s
data merge entity @n[tag=start_button_display,tag=lobby] {block_state:{Name:"test_block",Properties: {mode: "log"}}}
execute if score start_timer lobby matches ..1 run data merge entity @n[tag=start_button_display,tag=lobby] {block_state:{Name:"test_block",Properties: {mode: "start"}}}

scoreboard players remove start_timer lobby 1

execute if score start_timer lobby matches 5 run data merge entity @n[tag=start_text,tag=lobby] {text:{color:red,text:"5"}}
execute if score start_timer lobby matches 4 run data merge entity @n[tag=start_text,tag=lobby] {text:{color:gold,text:"4"}}
execute if score start_timer lobby matches 3 run data merge entity @n[tag=start_text,tag=lobby] {text:{color:gold,text:"3"}}
execute if score start_timer lobby matches 2 run data merge entity @n[tag=start_text,tag=lobby] {text:{color:green,text:"2"}}
execute if score start_timer lobby matches 1 run data merge entity @n[tag=start_text,tag=lobby] {text:{color:green,text:"1"}}

title @a times 0 20 5
execute if score start_timer lobby matches 5 run title @a[team=lobby,tag=!dev] title {color:red,text:"5"}
execute if score start_timer lobby matches 4 run title @a[team=lobby,tag=!dev] title {color:gold,text:"4"}
execute if score start_timer lobby matches 3 run title @a[team=lobby,tag=!dev] title {color:gold,text:"3"}
execute if score start_timer lobby matches 2 run title @a[team=lobby,tag=!dev] title {color:green,text:"2"}
execute if score start_timer lobby matches 1 run title @a[team=lobby,tag=!dev] title {color:green,text:"1"}

execute if score start_timer lobby matches 0 run tag @n[tag=lobby,tag=start_button] remove active

execute if score start_timer lobby matches ..0 run function voxelrun:game/start
execute if score start_timer lobby matches ..0 run schedule function voxelrun:lobby/start/reset_2 10s
execute as @a[team=lobby,tag=!dev] at @s run playsound ui.button.click master @s ~ ~ ~ 150000
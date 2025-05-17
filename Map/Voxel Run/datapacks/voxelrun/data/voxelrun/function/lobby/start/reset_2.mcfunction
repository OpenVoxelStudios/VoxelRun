data merge entity @n[tag=start_text,tag=lobby] {text:{color:green,text:"Start"}}
tag @n[tag=start_button,tag=lobby] add active
data merge entity @n[tag=start_button_display,tag=lobby] {block_state:{Name:"test_block",Properties: {mode: "accept"}}}
tag @n[tag=start_button,tag=lobby] remove game_starting
schedule clear voxelrun:lobby/start/1second
scoreboard players set start_timer lobby -10
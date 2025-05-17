data merge entity @n[tag=start_text,tag=lobby] {text:{color:red,text:"Game\nActive"}}
data merge entity @n[tag=start_button_display,tag=lobby] {block_state:{Name:"test_block",Properties: {mode: "fail"}}}
tag @n[tag=start_button,tag=lobby] remove game_starting
tag @n[tag=start_button,tag=lobby] remove active
scoreboard players set start_timer lobby -10
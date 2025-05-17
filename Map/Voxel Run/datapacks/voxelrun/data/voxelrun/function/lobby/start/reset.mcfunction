data merge entity @n[tag=start_text,tag=lobby] {text:{color:red,text:"Cancelled"}}
title @a times 0 20 5
title @a[team=lobby,tag=!dev] title {color:red,text:"Cancelled"}
data merge entity @n[tag=start_button_display,tag=lobby] {block_state:{Name:"test_block",Properties: {mode: "fail"}}}
tag @n[tag=start_button,tag=lobby] remove game_starting
tag @n[tag=start_button,tag=lobby] remove active
schedule function voxelrun:lobby/start/reset_2 2.5s
schedule clear voxelrun:lobby/start/1second
scoreboard players set start_timer lobby -10
playsound minecraft:block.note_block.didgeridoo master @a
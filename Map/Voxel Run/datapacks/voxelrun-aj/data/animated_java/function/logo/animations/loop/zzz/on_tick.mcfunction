# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
scoreboard players remove @s aj.tween_duration 1
execute if score @s aj.tween_duration matches 1.. run return 1
execute if score @s aj.tween_duration matches 0 on passengers run data modify entity @s interpolation_duration set value 1
execute if score @s aj.loop.frame matches -1 run function animated_java:logo/animations/loop/zzz/commands_keyframe_loop_patch
data remove storage aj:temp args
execute store result storage aj:temp args.frame int 1 run scoreboard players get @s aj.loop.frame
function animated_java:logo/animations/loop/zzz/apply_frame with storage aj:temp args
execute if score @s aj.loop.frame matches 89.. run return run scoreboard players set @s aj.loop.frame -1
scoreboard players add @s aj.loop.frame 1
# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
function animated_java:global/internal/gu/convert_uuid_array_to_string
data modify entity @s data.uuids.data_data set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.logo.node.block_display] run function animated_java:global/internal/gu/convert_uuid_array_to_string
data modify entity @s data.uuids.block_display_block_display set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.logo.node.knob] run function animated_java:global/internal/gu/convert_uuid_array_to_string
data modify entity @s data.uuids.bone_knob set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.logo.node.lid] run function animated_java:global/internal/gu/convert_uuid_array_to_string
data modify entity @s data.uuids.bone_lid set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.logo.node.base] run function animated_java:global/internal/gu/convert_uuid_array_to_string
data modify entity @s data.uuids.bone_base set from storage aj:uuid main.out
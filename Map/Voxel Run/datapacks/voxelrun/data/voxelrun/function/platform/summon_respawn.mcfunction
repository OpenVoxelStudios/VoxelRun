#> summon_respawn $size

$execute align xyz run summon minecraft:item_display ~.5 ~.5 ~.5 {Tags:["platform", "platform.respawn", "platform.size.$(size)", "platform.new"], item:{id:"flint", components:{"custom_model_data":{strings:["platform_0"]}}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0f, 0f, 0f]}}
function voxelrun:platform/postsummon
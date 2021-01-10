if (keyboard_check_pressed(vk_space))
{
    mordor_variable_add("test variable", 1);
}

if (keyboard_check_pressed(vk_control))
{
    mordor_set_stage("test 2", "start");
}
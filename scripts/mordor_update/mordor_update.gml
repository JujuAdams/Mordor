function mordor_update()
{
    if (MORDOR_DEBUG) __mordor_trace("Updating quest triggers");
    
    var _names = variable_struct_get_names(global.__mordor_quest_dict);
    var _i = 0;
    repeat(array_length(_names))
    {
        with(global.__mordor_quest_dict[$ _names[_i]]) __morder_update_quest();
        ++_i;
    }
    
    var _names = variable_struct_get_names(global.__mordor_procedural_quest_dict);
    var _i = 0;
    repeat(array_length(_names))
    {
        with(global.__mordor_procedural_quest_dict[$ _names[_i]]) __morder_update_quest();
        ++_i;
    }
}
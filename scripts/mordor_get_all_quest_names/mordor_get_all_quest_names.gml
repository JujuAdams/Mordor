function mordor_get_all_quest_names()
{
    var _predef_count     = variable_struct_names_count(global.__mordor_quest_dict);
    var _procedural_count = variable_struct_names_count(global.__mordor_procedural_quest_dict);
    
    var _array = array_create(_predef_count + _procedural_count, undefined);
    array_resize(_array, 0);
    
    var _names = variable_struct_get_names(global.__mordor_quest_dict);
    var _i = 0;
    repeat(_predef_count)
    {
        array_push(_array, _names[_i]);
        ++_i;
    }
    
    var _names = variable_struct_get_names(global.__mordor_procedural_quest_dict);
    var _i = 0;
    repeat(_predef_count)
    {
        array_push(_array, _names[_i]);
        ++_i;
    }
    
    return _array;
}
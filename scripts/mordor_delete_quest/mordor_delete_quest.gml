/// @param name

function mordor_delete_quest(_name)
{
    if (variable_struct_exists(global.__mordor_quest_dict, _name))
    {
        __mordor_error("Quest \"", _name, "\" cannot be deleted, it's not a procedural quest");
    }
    
    if (MORDOR_DEBUG) __mordor_trace("Deleting quest \"", _name, "\"");
    
    variable_struct_remove(global.__mordor_procedural_quest_dict, _name);
    variable_struct_remove(global.__mordor_stage_dict, _name);
}
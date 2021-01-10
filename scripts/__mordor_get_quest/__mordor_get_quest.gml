/// @param name

function __mordor_get_quest(_name)
{
    if (variable_struct_exists(global.__mordor_quest_dict, _name)) return global.__mordor_quest_dict[$ _name];
    return global.__mordor_procedural_quest_dict[$ _name];
}
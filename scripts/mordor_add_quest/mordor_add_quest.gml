/// @param name

function mordor_add_quest(_name)
{
    if (variable_struct_exists(global.__mordor_quest_dict, _name)) __mordor_error("Quest \"", _name, "\" already exists");
    if (variable_struct_exists(global.__mordor_procedural_quest_dict, _name)) __mordor_error("Procedural quest \"", _name, "\" already exists");
    
    if (MORDOR_DEBUG) __mordor_trace("Add quest \"", _name, "\"");
    
    var _quest = new __mordor_class_quest();
    _quest.__mordor_name = _name;
    global.__mordor_quest_dict[$ _name] = _quest;
    
    return _quest;
}
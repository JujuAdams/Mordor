global.__mordor_quest_dict            = {};
global.__mordor_procedural_quest_dict = {};
global.__mordor_stage_dict            = {};
global.__mordor_variable_dict         = {};

function __mordor_trace()
{
    var _string = "";
    var _i = 0;
    repeat(argument_count)
    {
        _string += string(argument[_i]);
        ++_i;
    }
    
    show_debug_message("Mordor: " + _string);
}

function __mordor_error()
{
    var _string = "";
    var _i = 0;
    repeat(argument_count)
    {
        _string += string(argument[_i]);
        ++_i;
    }
    
    show_error("Mordor:\n\n" + _string + "\n ", true);
}
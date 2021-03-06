global.__mordor_quest_dict            = {};
global.__mordor_procedural_quest_dict = {};
global.__mordor_stage_dict            = {};
global.__mordor_variable_dict         = {};

__mordor_trace("Welcome to Mordor by @jujuadams! This is version " + __MORDOR_VERSION + ", " + __MORDOR_DATE);

#macro __MORDOR_VERSION  "0.0.1"
#macro __MORDOR_DATE     "2020-01-11"

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
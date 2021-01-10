/// @param variableName
/// @param value
/// @param [forceUpdate]

function mordor_variable_set()
{
    var _name         = argument[0];
    var _value        = argument[1];
    var _force_update = ((argument_count > 2) && (argument[2] != undefined))? argument[2] : true;
    
    global.__mordor_variable_dict[$ _name] = _value;
    
    if (MORDOR_DEBUG)
    {
        if (is_string(_value))
        {
            __mordor_trace("Variable \"", _value, "\" = \"", _value, "\"");
        }
        else
        {
            __mordor_trace("Variable \"", _value, "\" = ", _value);
        }
    }
    
    if (_force_update) mordor_update();
}
/// @param variableName
/// @param [defaultValue]

function mordor_variable_get()
{
    var _name    = argument[0];
    var _default = ((argument_count > 1) && (argument[1] != undefined))? argument[1] : 0;
    
    if (!variable_struct_exists(global.__mordor_variable_dict, _name)) return _default;
    
    return global.__mordor_variable_dict[$ _name];
}
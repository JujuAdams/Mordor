/// @param variableName
/// @param value

function mordor_variable_add(_name, _value)
{
    mordor_variable_set(_name, mordor_variable_get(_name, 0) + _value);
}
/// @param variableName
/// @param operation
/// @param targetValue
/// @param nextStageName
/// @param [stageStruct]

function mordor_add_trigger()
{
    var _variable_name = argument[0];
    var _operation     = argument[1];
    var _target_value  = argument[2];
    var _next_stage    = argument[3];
    var _stage         = ((argument_count > 4) && (argument[4] != undefined))? argument[4] : self;
    
    if (!is_struct(_stage)) __mordor_error("Invalid stage provided");
    
    if (MORDOR_DEBUG)
    {
        if (is_string(_target_value))
        {
            __mordor_trace("    Adding trigger (\"", _variable_name, "\" ", _operation, " \"", _target_value, "\"  -->  \"", _next_stage, "\") to stage \"", _stage.__mordor_name, "\"");
        }
        else
        {
            __mordor_trace("    Adding trigger (\"", _variable_name, "\" ", _operation, " ", _target_value, "  -->  \"", _next_stage, "\") to stage \"", _stage.__mordor_name, "\"");
        }
    }
    
    with(_stage)
    {
        var _trigger = new __mordor_class_trigger();
        with(_trigger)
        {
            variable_name   = _variable_name;
            operation       = _operation;
            target_value    = _target_value;
            next_stage_name = _next_stage;
        }
        
        array_push(__mordor_triggers, _trigger);
        return _trigger;
    }
}
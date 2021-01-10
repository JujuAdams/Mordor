/// @param stageName
/// @param [questStruct]

function mordor_add_stage()
{
    var _stage_name = argument[0];
    var _quest      = ((argument_count > 1) && (argument[1] != undefined))? argument[1] : self;
    
    if (MORDOR_DEBUG) __mordor_trace("  Adding stage \"", _stage_name, "\" to quest \"", _quest.__mordor_name, "\"");
    
    with(_quest)
    {
        if (variable_struct_exists(__mordor_stages, _stage_name))
        {
            __mordor_error("Stage \"", _stage_name, "\" already exists for quest \"", __mordor_name, "\"");
        }
        
        var _stage = new __mordor_class_stage();
        _stage.__mordor_name = _stage_name;
        __mordor_stages[$ _stage_name] = _stage;
        
        return _stage;
    }
}
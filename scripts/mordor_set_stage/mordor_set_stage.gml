/// @param questName
/// @param stageName

function mordor_set_stage(_quest_name, _stage_name)
{
    var _quest = __mordor_get_quest(_quest_name);
    with(_quest)
    {
        if (_stage_name == undefined)
        {
            variable_struct_remove(global.__mordor_stage_dict, _stage_name);
        }
        else
        {
            if (!variable_struct_exists(__mordor_stages, _stage_name))
            {
                __mordor_error("Stage \"", _stage_name, "\" doesn't exist for quest \"", __mordor_name, "\"");
            }
            
            if (_stage_name != mordor_get_stage(__mordor_name))
            {
                if (MORDOR_DEBUG) __mordor_trace("Setting quest \"", _quest_name, "\" stage to \"", _stage_name, "\"");
                
                global.__mordor_stage_dict[$ __mordor_name] = _stage_name;
                MORDOR_CALLBACK(self, __mordor_stages[$ _stage_name]);
                
                __morder_update_quest();
            }
        }
    }
}
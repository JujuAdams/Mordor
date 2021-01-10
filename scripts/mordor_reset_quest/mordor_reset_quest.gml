/// @param questName

function mordor_reset_quest(_quest_name)
{
    if (MORDOR_DEBUG) __mordor_trace("Resetting quest \"", _quest_name, "\"");
    
    mordor_set_stage(_quest_name, undefined);
}
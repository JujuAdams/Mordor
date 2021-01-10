/// @param [quest]

function __morder_update_quest()
{
    var _quest = ((argument_count > 0) && (argument[0] != undefined))? argument[0] : self;
    
    var _stage = mordor_get_stage(_quest.__mordor_name);
    if (_stage != undefined)
    {
        with(__mordor_stages[$ _stage]) __mordor_update_stage(_quest);
    }
}
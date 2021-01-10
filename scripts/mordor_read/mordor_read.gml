/// @param string

function mordor_read(_string)
{
    var _struct = json_parse(_string);
    with(_struct)
    {
        global.__mordor_procedural_quest_dict = procedural_quests;
        global.__mordor_stage_dict            = stages;
        global.__mordor_variable_dict         = variables;
    }
}
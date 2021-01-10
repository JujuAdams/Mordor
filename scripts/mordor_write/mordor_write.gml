function mordor_write()
{
    var _struct = {
        procedural_quests : global.__mordor_procedural_quest_dict,
        stages            : global.__mordor_stage_dict,
        variables         : global.__mordor_variable_dict,
    }
    
    return json_stringify(_struct);
}
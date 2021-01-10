/// @param questName
/// @param stageName

function mordor_get_stage_struct(_quest_name, _stage_name)
{
    var _quest = mordor_get_quest_struct(_quest_name);
    if (is_struct(_quest)) with(_quest) return __mordor_stages[$ _stage_name];
    return undefined;
}
/// @param quest

function __mordor_update_stage(_quest)
{
    var _i = 0;
    repeat(array_length(__mordor_triggers))
    {
        var _trigger = __mordor_triggers[_i];
        
        var _variable_value = mordor_variable_get(_trigger.variable_name);
        var _target_value = _trigger.target_value;
        
        var _result = false;
        switch(_trigger.operation)
        {
            case "=":
            case "==": _result = (_variable_value == _target_value); break;
            case "!=": _result = (_variable_value != _target_value); break;
            case ">":  _result = (_variable_value >  _target_value); break;
            case ">=": _result = (_variable_value >= _target_value); break;
            case "<":  _result = (_variable_value <  _target_value); break;
            case "<=": _result = (_variable_value <= _target_value); break;
        }
        
        if (_result)
        {
            mordor_set_stage(_quest.__mordor_name, _trigger.next_stage_name);
            break;
        }
        
        ++_i;
    }
}
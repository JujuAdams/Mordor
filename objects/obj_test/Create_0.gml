with(mordor_add_quest("test"))
{
    with(mordor_add_stage("start"))
    {
        mordor_add_trigger("test variable", ">=", 2,   "second stage");
    }
    
    with(mordor_add_stage("second stage"))
    {
        mordor_add_trigger("test variable", ">=", 4,   "end");
    }
    
    mordor_add_stage("end");
}

mordor_set_stage("test", "start");




with(mordor_add_procedural_quest("test 2"))
{
    with(mordor_add_stage("start"))
    {
        mordor_add_trigger("test variable", ">=", 3,   "end");
    }
    
    mordor_add_stage("end");
}
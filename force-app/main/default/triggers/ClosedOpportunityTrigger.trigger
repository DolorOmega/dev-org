trigger ClosedOpportunityTrigger on Opportunity (before insert, before update) {
    
    List<Task> tasksToCreate = new List<Task>();
    
    for( Opportunity oppty : Trigger.New ){
        if( oppty.StageName == 'Closed Won' ){
            Task tsk = new Task( Subject = 'Follow Up Test Task', WhatId = oppty.Id );
            tasksToCreate.add(tsk);
        }
    }
    
    insert tasksToCreate;

}
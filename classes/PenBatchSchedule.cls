global class PenBatchSchedule implements Schedulable {

    global void execute(schedulablecontext sc)
    {
        
        penbatch pb = new penbatch();
        database.executeBatch(pb, 10);
        
    }
    
}
global class BatchCourse implements database.Batchable<sobject>, database.stateful
{      
            public string coursename;
            global BatchCourse(string coursename1)
            {
               coursename = coursename1;
            }       
            global database.QueryLocator start (database.BatchableContext bc)
            {
                    string query = 'Select id, name, course_credits__c from Course_Name__c where name =: coursename';
                     system.debug(LoggingLevel.ERROR, 'query is ' + query);
                    system.debug('coursename is ' + coursename);
                    return database.getQueryLocator(query);
             }    
            global void execute(database.BatchableContext bc, List<Course_Name__c> scope)            
            {
                List<course_name__C> courseupd =    new List<course_name__C>();
                for(course_name__C c : scope)
                {
                 system.debug('course credit before update' + c.Course_Credits__c);
                 c.course_credits__c = 300;
                 courseupd.add(c);
                    system.debug('course credit after update' + c.Course_Credits__c);
                }
                update courseupd;
                
               system.debug('New Credit value is' +    [select course_credits__c from Course_Name__c where name = : coursename]);
                
                
            }            
            global void finish(database.BatchableContext bc)
            {
               // coursename = null;
            }    

}
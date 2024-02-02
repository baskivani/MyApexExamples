trigger taskTrigger on Task (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
//whenever a task created set priority to "high".
//
    // 
	 /* if (Trigger.isInsert && Trigger.isBefore){
     for(task taskRecord: Trigger.new ){
                system.debug('fourn task record');
                taskRecord.priority = 'High';
            }
		}  
	*/
      SWITCH on Trigger.operationType {
        
        WHEN BEFORE_INSERT  { 
            for(task taskRecord: Trigger.new ){
                system.debug('fourn task record');
                taskRecord.priority = 'High';
            }
        }
        WHEN BEFORE_UPDATE  { }
        WHEN BEFORE_DELETE  { }
        WHEN AFTER_INSERT   { }
        WHEN AFTER_UPDATE   { }
        WHEN AFTER_DELETE   { }
        WHEN AFTER_UNDELETE { }
 
    }
}

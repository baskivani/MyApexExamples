trigger LeadTrigger on Lead (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
//Whenever a lead updated set the lead status to "working-Contacted".
  
    //if'li şekli
        if (Trigger.isUpdate && Trigger.isBefore){
     for(lead leadRecord: Trigger.NEW ){
         
           leadRecord.LeadSource = 'Web';
         
            }
           /* 
           
            */
		}  
  /*
     if (Trigger.isUpdate && Trigger.isBefore){
      for(lead leadRecord: Trigger.NEW ){
         
        
           leadRecord.Rating = 'Hot';
            }
          }
    */
      /*
    SWITCH on Trigger.operationType {
       	      
        WHEN BEFORE_INSERT  { }
        WHEN BEFORE_UPDATE  { 
         for(lead leadRecord: Trigger.new ){
                system.debug('fourn lead record');
                leadRecord.status = 'Working-Contacted';
            }
        }
        
        WHEN BEFORE_DELETE  { }
        WHEN AFTER_INSERT   { }
        WHEN AFTER_UPDATE   { }
        WHEN AFTER_DELETE   { }
        WHEN AFTER_UNDELETE { }
 
    }
*/
}

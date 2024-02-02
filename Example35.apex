trigger CaseTrigger on Case (before insert) {
// Whenever a Case created and Case Origin is Phone, 
// set Priority as "High", else set as "Low".
  if (Trigger.isBefore && Trigger.isInsert){
     for(case caseRecord: Trigger.NEW ){
        if(caseRecord.Origin == 'Phone'){
           caseRecord.Priority = 'High';
         }
         else {
          caseRecord.Priority = 'Low';
         }            
       }
	}  
  }







Baran
  8:34 PM
selam gençl

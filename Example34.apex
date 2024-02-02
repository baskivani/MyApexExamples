trigger AccountTrigger on Account (before insert , before update , before delete , after insert , after update, after delete, after undelete) {

    	SWITCH on Trigger.operationType {
        
        WHEN BEFORE_INSERT  { 
           for( account acc: trigger.new){
                acc.Rating= 'Hot';
                acc.BillingState ='ARKANSAS';
            }
           
        }
        WHEN BEFORE_UPDATE  { }
        WHEN BEFORE_DELETE  { }
        WHEN AFTER_INSERT   {
         List<contact> cntList = new List<contact>();
            for (account acc2:trigger.new){
                Contact cnt= new contact();
                cnt.lastName = 'cnt of ' +acc2.Name;
                cnt.AccountId= acc2.id;
                cntList.add(cnt);
            }
            insert cntList;
        }
        WHEN AFTER_UPDATE   { }
        WHEN AFTER_DELETE   { }
        WHEN AFTER_UNDELETE { }
}
}

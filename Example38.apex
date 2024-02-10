 public static void NumberOfContacts(List<Contact> cntList){
        
        Set<Id> accIdleri = new Set<Id>();
        for (Contact cnt : cntList){
            if (cnt.AccountId!=null){
                accIdleri.add(cnt.AccountId);
            }
        }                
              list <Account> accList = [SELECT Id, Name,NumberOfContacts__c , (SELECT Id From Contacts) From Account WHERE id IN : accIdleri];
                for (Account acc: accList ){
                    acc.NumberOfContacts__c = acc.contacts.size();
                }
          update accList;  
    }
    

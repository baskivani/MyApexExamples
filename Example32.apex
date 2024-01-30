// Count Contacts of Account
public class MyApexExamples {

  

 public static void CountContacts(){
        
        List<Account> accList =[SELECT Id, Name,
                                (SELECT Id, FirstName, LastName FROM Contacts) 
                                FROM Account WHERE CreatedDate = LAST_WEEK];
        if (!acclist.isEmpty()){
            
            for (Account acc : accList){
                acc.Total_Contacts__c=acc.Contacts.size();
 
            }
        }
        update accList;
    }

  
    	}

// In order to test we can write the codes below in Anonymus Windows.

/*  




*/

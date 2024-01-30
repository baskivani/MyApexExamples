 // This code updates all phone fields  on existing accounts
public class MyApexExamples {

  
 
 public static void UpdatePhoneOfAccounts(){
        
  List<Account> accList= [SELECT Id,Name,Phone FROM Account];
        if (acclist.size()>0){
          for(Account acc: accList){
              
              acc.Phone='1234567';
                          
        }
  
        }  
        Database.update(accList,false);
        
    }

  
    	}

// In order to test we can write the codes below in Anonymus Windows.

/*  




*/

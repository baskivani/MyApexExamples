 // Update Contact Phones 
public class MyApexExamples {

  
 public static void UpdatePhonesOfContact(){
        
        List<Contact> cntList =[SELECT Id, Phone, Account.Phone From Contact];
        
        if (cntList.size()>0){
            for (Contact cnt : cntList) {
                
                if(cnt.Phone==null){
                    
                    cnt.Phone=cnt.Account.Phone;
                }
            }
        }
        update cntList;
        
    }
  
    	}

// In order to test we can write the codes below in Anonymus Windows.

/*  




*/

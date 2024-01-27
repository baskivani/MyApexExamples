// This code gives us number of same named Accounts
public class MyApexExamples {

   public static void SameNamedAccounts(){
        
        list<account> accList= [Select id, name from Account];
        
        Map<string,integer> myMap= new Map<string,integer>();
        
        if (accList.size()>0){
            
            for (account acc: accList) {
                integer numOFNames=myMap.get(acc.Name);
                if (numOfNames==0){
                    myMap.put(acc.Name,1);
					                }else {

                        myMap.put(acc.Name,numOfNames+1);

                    }
                }
            }
        }
  
    	}

// In order to test we can write the codes below in Anonymus Windows.

/*  




*/

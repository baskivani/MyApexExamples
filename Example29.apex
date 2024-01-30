// This code are creating an opportunity for the accounts created this year.
public class MyApexExamples {

   public static void CreateOpportunityForAccount(){
        
        List<Account> accList= [SELECT Id,Name FROM Account WHERE CreatedDate= THIS_YEAR];
        List<Opportunity> oppList= new List<Opportunity> ();
      
        if(!accList.isEmpty()){
             for (Account acc : accList){
                 
                 Opportunity opp= new Opportunity(AccountId=acc.id);
                 opp.CloseDate=system.today().addDays(10);
                 opp.Name=acc.Name;
                 opp.StageName='Prospecting';
                 oppList.add(opp);
                   }
            Database.insert(oppList);
            
        }
       
    }
  
    	}

// In order to test we can write the codes below in Anonymus Windows.

/*  




*/

// This code updates descriptions according to stage names on opportunity
public class MyApexExamples {

      public static void UpdateDescriptionsOfOpportunity(){
        
        List<Opportunity> oppList = [SELECT Id, Name, StageName, Description FROM Opportunity];
        
        if (oppList.size()>0){
            
            for (Opportunity opp : oppList) {
                
                if (opp.StageName=='Closed Won') {
                    opp.Description= 'Opportunity is Closed Won';
                } 
                else if (opp.StageName=='Closed Lost') {
                    opp.Description= 'Opportunity is Closed Lost';
                }
            }
            
        } if( oppList.size()>0) {
            
            database.update(oppList,false);
        }
    }

  
    	}

// In order to test we can write the codes below in Anonymus Windows.

/*  




*/

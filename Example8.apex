// If Account Rating is 'Hot' , assign Negotiation/Review to Opportunity Stage Name
public class MyApexExamples {

  
public static void UpdateStage(){
        list <opportunity> oppList= new list <opportunity>();
        try {
        oppList= [Select id, Name, StageName,Account.Rating from Opportunity];
        } catch(Exception e){
            system.debug('Hata cikti');
        }
        if (oppList.size()>0) {
            
            for (opportunity opp: oppList) {
                
                 if (opp.Account.Rating=='Hot'){
                    opp.StageName='Negotiation/Review';
                 } else if       
                 (opp.Account.Rating==null){
                    opp.StageName='Prospecting';
                }
            }
            try{
            database.update(oppList,false);
            }
            catch (Exception e){
                system.debug('Guncellenemiyor.');
            }
        }    }
  
    	}

// In order to test we can write the codes below in Anonymus Windows.

/*  




*/



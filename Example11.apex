// This code give us total Anual Revenue of Accounts and related Opportunities
public class MyApexExamples {

  
List<Account> accList = [SELECT id, Name, AnnualRevenue From Account];
for (Account acc: accList){
    	List<Opportunity> oppList= [SELECT id, Name, Amount From Opportunity Where AccountId=:acc.id];
        decimal totalAmount=0;
        for(Opportunity opp: oppList){
                if (opp.Amount>0 &&opp.Amount!=null){

            totalAmount+=opp.Amount;
        } 

} 
           acc.AnnualRevenue=totalAmount;
}
update accList;

  
    	}

// In order to test we can write the codes below in Anonymus Windows.

/*  




*/

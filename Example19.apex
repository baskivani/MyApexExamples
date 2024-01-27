// 
public class MyApexExamples {


  public static Account CreateNewAccount(string accName){
        
        Account newAcc = new Account();
        newAcc.Name= accName;
        newAcc.Phone= '05055454565';
        newAcc.Rating='Hot';
        
        insert newAcc;
        return newAcc;
        
    }
    public static void CreateNewOpportunity(string oppName){
        Account newAcc= CreateNewAccount('Dersim Limited Sirketi');

        Opportunity newOpp = new Opportunity();
        newOpp.Name= oppName;
        newOpp.CloseDate=date.today().addDays(15);
        newOpp.StageName='Prospecting';
        newOpp.AccountId=newAcc.Id;
        
        insert newOpp;

}
    public static void CreateNewContact(string firstName, string lastName){
      Account newAcc= CreateNewAccount('Dersim Limited Sirketi');
        Contact newCnt = new Contact();
        newCnt.FirstName = firstName;
        newCnt.LastName = lastName;
        newCnt.AccountId = newAcc.id;
      
        insert newCnt;
    }
  
  
    	}

// In order to test we can write the codes below in Anonymus Windows.

/*  




*/


// This code gives us the account name of given Id
public class SOQLExamples {

    
    //Example2 
   
	public String ContactAndAccount(String myId) {
        Contact cnt = [SELECT Id, Name, Account.Name FROM Contact WHERE Id = :myId AND AccountId != null LIMIT 1];

        if (cnt != null && cnt.Account != null) {
            return cnt.Account.Name;
        } else {
            return null; 
        }
    }

  // In order to test we can write the codes below in Anonymus Windows.
/*
MyApexExamples example = new MyApexExamples();

string accName =example.ContactAndAccount('0038d00000qdiLiAAI');

system.debug('Given Id'\'s account name is '+accName);
*/
}
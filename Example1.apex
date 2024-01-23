// Displaying contacts and accounts (A query from child to parent )
public class MyApexExamples {
  
    public list<contact> ContactsAndAccounts(){
    
        list<contact> cntList = [Select Id, Name, Account.Name from Contact];

		for (Contact cnt : cntList){
        					System.debug('Contact '+cnt.Name +'\'s Account name is '+ cnt.Account.Name);
									} 
       			 return cntList;
    	}

// In order to test we can write the codes below in Anonymus Windows.
/*  MyApexExamples ornek = new MyApexExamples();
    ornek.ContactsAndAccounts();
*/

}
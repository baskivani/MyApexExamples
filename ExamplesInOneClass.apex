public class MyApexExamples {
  
    //This method give us contacts and its accounts together
    public list<contact> ContactsAndAccounts(){
    
        list<contact> cntList = [Select Id, Name, Account.Name from Contact];

		for (Contact cnt : cntList){
        						
            			system.debug('Contact '+cnt.Name +'\'s Account name is '+ cnt.Account.Name);
									} 
       			 return cntList;
    }
// In order to test we can write the codes below in Anonymus Windows.
/*  MyApexExamples ornek = new MyApexExamples();
    ornek.ContactsAndAccounts();
*/

    	
    
/******************************************************************************************************* */

    // This method give us contact  of given contact ID
	public String ContactAndAccount(String myId) {
        Contact cnt = [SELECT Id, Name, Account.Name FROM Contact WHERE Id = :myId AND AccountId != null LIMIT 1];

        if (cnt != null && cnt.Account != null) {
            return cnt.Account.Name;
        } else {
            return null; // v
        }
    }
 // In order to test we can write the codes below in Anonymus Windows.
/*
MyApexExamples example = new MyApexExamples();
string accName =example.ContactAndAccount('0038d00000qdiLiAAI');
system.debug('Given Id'\'s account name is '+accName);
*/
    

/********************************************************************************************************* */


  // This method give us opportunity of creating a new Contact with some fields
    public static Contact createNewContact(string firstName, string lastName, string phone, string email){
    
    Contact newRecord= new Contact();
    newRecord.FirstName= firstName;   
    newRecord.LastName= lastName;
    newRecord.phone= phone;
    newRecord.email= email;
    database.insert(newRecord);
    
    return newRecord;
}
// In order to test we can write the codes below in Anonymus Windows.
// MyApexExamples.createNewContact('Alaz Cinar','Zeylan','5055333355','alazzeylan@gmail.com');

    

/*************************************************************************************** */


    // Bu hata veriyor, sanırım Close Date ile alakalı
    public static Opportunity createNewOpportunity(string name, decimal amount, string stage, date closeDate){
    
    Opportunity newRecord= new Opportunity();
    newRecord.Name= name;   
    newRecord.Amount= amount;
    newRecord.StageName= stage;
   // newRecord.CloseDate= closeDate;
    database.insert(newRecord);
    
    return newRecord;
    } 
/*********************************************************************************************** */
   
// This method gives us the total number of accounts with annual revenue greater than 500
    public static integer AnnualRevenueOfAccount (){
        
        list<account> accList= [Select id, name, AnnualRevenue from Account Where AnnualRevenue<500];
        integer numOfARevenue= acclist.size();
        
        return numOfARevenue;
    }

/***********************************************************************************************/


// This method gives us the total number of accounts with annual revenue greater than given amount
    public static integer AnnualRevenueOfAccount (integer amount){
        
        list<account> accList= [Select id, name, AnnualRevenue from Account Where AnnualRevenue>:amount];
        integer numOfARevenue= acclist.size();
        
        return numOfARevenue;
    }
// In order to test we can write the codes below in Anonymus Windows.
/*
 integer numOfARevenue= MyApexExamples.AnnualRevenueOfAccount(500);
system.debug(numOfARevenue);
*/
    
    /*********************************************************************** */

// This method is an example for Getter and Setter Method
     private name='Baran';
    public string getName(){
    
    return name;
    }
    
    public string setName(string enteredName){
        name=enteredName;
        return name;
    }

    // In order to test we can write the codes below in Anonymus Windows.
/*
MyApexExamples example = new MyApexExamples();
string oldName= example.getName();
system.debug('Old name is '+oldName);
string newName= example.setName('Meral');
system.debug(' New Name is ' +newName);

*/
 public static Void AddNametoACcount(string accName){
        
        
list<Account> accList =[Select id, Name from Account limit 5];

for(Account acc : accList) {
    
    acc.Name=acc.Name +accName ;
system.debug(acc.Name);
}
    } 
  
  // In order to test we can write the codes below in Anonymus Windows.
  /*  
MyApexExamples.AddNametoACcount(' Company');

*/    
}



// DML - Delete
public class MyApexExamples {

  List<Account> accList = [SELECT Id, Name, Phone 
                         FROM Account 
                         WHERE Name = 'Hotels of Dersim 17'];


Database.delete(accList);

  
    	}

// In order to test we can write the codes below in Anonymus Windows.

/*  




*/

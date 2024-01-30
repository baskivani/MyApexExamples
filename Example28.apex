// DML -Upsert
public class MyApexExamples {

  Account newRecord = new Account(Name='Bank Of Meral', Phone='111111');

Account acc =[SELECT Id, Name From Account Where Name ='Hotels of Dersim 14'];

acc.Name= 'Hotels of Adar';

List <Account> accList =new List<Account>();
accList.add(newRecord);
accList.add(acc);

upsert accList;

  
    	}

// In order to test we can write the codes below in Anonymus Windows.

/*  




*/

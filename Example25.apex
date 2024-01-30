  // Second Method of Creating A New Object and Inserting it to Database through DML events
 
public class MyApexExamples {


Account newRecord=new Account ();
newRecord.Name='Bank of Erzingan';
  newRecord.Phone='1232123';

Database.insert(newRecord,false);

  
    	}

// In order to test we can write the codes below in Anonymus Windows.

/*  




*/

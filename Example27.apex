// 
public class MyApexExamples {

  List<Account> accList= [SELECT Id, Name FROM Account Limit 5];

for (integer i=0; i<5; i++){
   accList[i].Name = 'Bank of Izmir' +i;
} 

update accList;
  
    	}

// In order to test we can write the codes below in Anonymus Windows.

/*  




*/

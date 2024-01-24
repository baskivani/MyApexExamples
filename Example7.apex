// 
public class MyApexExamples {
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





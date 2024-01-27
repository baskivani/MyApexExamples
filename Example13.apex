// This is second method that gives us number of same named accounts
public class MyApexExamples {

     public static Void tekrarEdenAccountlar (){
        // nested for loop yontemi  ....  daha anlasilir olabilir diye bunu dusundum  yoksa MAP de cok guzel olur
        list<account> accList = [ SELECT id, name FROM account];
        list<account> accBenzerIsimlerList = new List<account>();
        for(integer i=0 ; i<accList.size() ; i++){
            for( integer k=i+1 ; k<accList.size() ; k++ ){
                if (accList[i].name.equals(accList[k].name)   ){
                    system.debug(accList[i].name);
                    accBenzerIsimlerList.add(accList[i]);
                }
            }
        }
       system.debug(accBenzerIsimlerList);
     }
  
    	}

// In order to test we can write the codes below in Anonymus Windows.

/*  




*/

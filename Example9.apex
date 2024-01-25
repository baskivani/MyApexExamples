// 
public class MyApexExamples {

  
    public static void numOfRating (){
        list<account> accList= new list<account> ();
        try{
        accList =[Select id, name, rating from Account];
        } catch (Exception e){
            system.debug('There is a problem.');
        }
        
        Map<String,integer> myMap = new Map<String,integer>();
            for (account acc :accList){
            
        if (accList.size()>0){
                integer numOfRating=myMap.get(acc.Rating);
                if (numOfRating==null){
                    myMap.put(acc.Rating,1);
                }else {
                    
              myMap.put(acc.Rating,numOfRating+1);

                }

            }
        
            }
        
   system.debug(myMap);
    }
  
    	}

// In order to test we can write the codes below in Anonymus Windows.

/*  




*/

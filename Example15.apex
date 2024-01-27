 // 
public class MyApexExamples {

  
 public static void NumOfRepeatedWord(){
        
        list<string> myList = new list<string> {'Meral','Adar','Alaz','Baran', 'Alaz','Adar','Meral','Dersim','Adar'};
            
            map<string,integer> myMap = new map<string,integer> ();
        
        for (string word :myList){
            integer numOfWord=myMap.get(word);
            if(numOfWord==null){
                numOfWord=myMap.put(word,1);
            } else {
                MyMap.put(word,numOfWord+1);
            }
        }
system.debug(myMap);
}
   
  
    	}

// In order to test we can write the codes below in Anonymus Windows.

/*  




*/

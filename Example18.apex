// This code gives us daily routine of any family
public class MyApexExamples {


public static void MyFamilysDailyRoutin(string enteredperson, string enteredday, integer timee) {        
	
        integer getUpTime=timee;
		string person= enteredperson;
		string day =enteredday;

if (person.equalsIgnoreCase('Mother')){ 
    
    if (day.equalsIgnoreCase('Monday')||day.equalsIgnoreCase('Thursday')) {
        
        if (getUpTime>=8) {
            
             system.debug('Mother on '+day+' at '+getUpTime+ ' o\'clock should get up and go to work');

        } else {
           
            system.debug('Mother can keep sleeping');

        }

    }else if (day.equalsIgnoreCase('Wednesday')||day.equalsIgnoreCase('Thursday')||day.equalsIgnoreCase('Friday')) {
        
        if (getUpTime>=9) {
            
             system.debug('Mother on '+day+' at '+getUpTime+ ' o\'clock should get up and go to work');

        } else {
           
            system.debug('Mother on '+day+' at '+getUpTime+ ' o\'clock can keep sleeping');

        }

    } else if (day.equalsIgnoreCase('Saturday')||day.equalsIgnoreCase('Sunday')) {
        
            system.debug('Mother on '+day+' at '+getUpTime+ ' o\'clock doesn\'t work.');

    } else {
        system.debug('Invalid input. Please enter a valid days name.');
    }
 
}else if (person.equalsIgnoreCase('Father')){
   if (day.equalsIgnoreCase('Monday')||day.equalsIgnoreCase('Thursday')) {
        
        if (getUpTime>=7) {
            
             system.debug('Father on '+day+' at '+getUpTime+ ' o\'clock should get up and go to work');

        } else {
           
            system.debug('Father on '+day+' at '+getUpTime+ ' o\'clock can keep sleeping');

        }

    }else if (day.equalsIgnoreCase('Wednesday')||day.equalsIgnoreCase('Thursday')||day.equalsIgnoreCase('Friday')) {
        
        if (getUpTime>=8) {
            
             system.debug('Father on '+day+' at '+getUpTime+ ' o\'clock should get up and go to work');

        } else {
           
            system.debug('Father on '+day+' at '+getUpTime+ ' o\'clock can keep sleeping');

        }

    } else if (day.equalsIgnoreCase('Saturday')||day.equalsIgnoreCase('Sunday')) {
        
        
     if (getUpTime>=10) {
            
             system.debug('Father on '+day+' at '+getUpTime+ ' o\'clock should get up and go to work');

        } else {
           
            system.debug('Father on '+day+' at '+getUpTime+ ' o\'clock can keep sleeping');

        }
    
  
    
}  else {
        system.debug('Invalid input. Please enter a valid days name.');
    }
 
    
} else if (person.equalsIgnoreCase('Child')){
  if (day.equalsIgnoreCase('Monday')||day.equalsIgnoreCase('Tuesday')|| day.equalsIgnoreCase('Wednesday')||day.equalsIgnoreCase('Thursday')||day.equalsIgnoreCase('Friday')) {
        
        if (getUpTime>=9) {
            
             system.debug('Child on '+day+' at '+getUpTime+ ' o\'clock should get up and go to work');

        } else {
           
            system.debug('Child on '+day+' at '+getUpTime+ ' o\'clock can keep sleeping');

        }

    }else if (day.equalsIgnoreCase('Saturday')) {
        
        if (getUpTime>=8) {
            
             system.debug('Child on '+day+' at '+getUpTime+ ' o\'clock should get up and go to the course');

        } else {
           
            system.debug('Child on '+day+' at '+getUpTime+ ' o\'clock should get up and');

        }

    } else if (day.equalsIgnoreCase('Sunday')) {
        
             system.debug('Child on '+day+' at '+getUpTime+ ' o\'clock  can sleeping');

    } else {
        system.debug('Invalid input. Please enter a valid days name.');
    }
} else {
    system.debug( 'Please enter a valid person name. You have to just write one of "Father", "Mother","Child" words ');
}  
}

  
  
    	}

// In order to test we can write the codes below in Anonymus Windows.

/*  




*/

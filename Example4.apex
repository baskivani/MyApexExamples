// This method is an example for Getter and Setter Method
     public class SOQLExamples {

     private name='Baran';
    public string getName(){
    
    return name;
    }
    
    public string setName(string enteredName){
        name=enteredName;
        return name;
    }
     }
    // In order to test we can write the codes below in Anonymus Windows.
/*
MyApexExamples example = new MyApexExamples();
string oldName= example.getName();
system.debug('Old name is '+oldName);
string newName= example.setName('Meral');
system.debug(' New Name is ' +newName);

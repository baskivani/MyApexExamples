// Creating new Contact with Some Fields
public class MyApexExamples {
  
    public static Contact createNewContact(string firstName, string lastName, string phone, string email){
    
    Contact newRecord= new Contact();
    newRecord.FirstName= firstName;   
    newRecord.LastName= lastName;
    newRecord.phone= phone;
    newRecord.email= email;
    database.insert(newRecord);
    
    return newRecord;
    }
    // In order to test we can write the codes below in Anonymus Windows.
// MyApexExamples.createNewContact('Alaz Cinar','Zeylan','5055333355','alazzeylan@gmail.com');

}
 public static void createNewContact(list<Account> accList){
        
         List <Contact> cntList = new List <Contact> ();
            for (Account acc : accList) {
                
                Contact newContact= new Contact();
                newContact.LastName= 'John';
                newContact.FirstName= 'Smith';
                newContact.AccountId=acc.id;
                cntList.add(newContact);
                
            }
            insert cntList;

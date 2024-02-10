public static void WritetoDescriptionofContact(list<Account> accList, Map<id,Account> newAccountMap){
         
         Set <id> accidleri = newAccountMap.keySet();
         
         list <Contact> cntList = [Select id from Contact Where AccountId IN: accidleri];
         for (Contact cnt : cntList) {
             
             cnt.Description= 'This record is coming from Recyle Bin';
             
         }
        update cntList;
    }

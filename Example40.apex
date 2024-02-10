public static void IndustryControl(list<Account> accList){
             for (Account acc : accList){
                
                if (acc.Industry==null){
                    acc.Industry='Banking';
                }
            }

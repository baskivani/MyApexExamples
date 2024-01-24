// Writing the names of a list under each other with For Loop and For Each Loop


// For Loop

list<string> newList = new list<string> {'Meral','Baran','Adar','Alaz'};
    for (integer i=0; i<newList.size();i++){
        
        system.debug(newList[i]);
    }

// For Each Loop
list<string> newList = new list<string> {'Meral','Baran','Adar','Alaz'};

    for (string name : newList){
        System.debug(name);
    }

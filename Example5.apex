
// The ways of creating List
// 1. way

list<integer> newList = new list<integer> ();
newList.add(15);
newList.add(10);
newList.add(20);
newList.add(5);

system.debug('The elements of newList is: '+newList);//The elements of newList is: (15, 10, 20, 5)
system.debug('Size of newList is: '+newList.size()); // Size of newList is: 4

// 2.way

list<string> newList = new list<string> {'Meral','Baran','Adar','Alaz'};
    system.debug('The elements of newList is: '+newList); // The elements of newList is: (Meral, Baran, Adar, Alaz)
system.debug('Size of newList is: '+newList.size()); // Size of newList is: 4

// 3. way

list<Account> accList= [Select Id, Name, Phone From Account];
system.debug(accList);   // (Account:{Id=0018d00000kjgQzAAI, Name=GenePoint New, Phone=(650) 867-3450},       Account:{Id=0018d00000kjgQxAAI, Name=United Oil & Gas, UK New, Phone=+44 191 4956203}...
system.debug('Size of accList is: '+accList.size());  // Size of accList is: 300

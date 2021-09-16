trigger AccountTrg on Account (before insert) {
    
    List<String> accountNames=new List<String>(); //Here i have created a list of string type
    
    //In this loop , we have fetched the name of those which are getting inserted , and those names we are 
    //storing in the list
    for(Account acc:Trigger.New){
        accountNames.add(acc.Name);  
    }
    
    //Here write a query to fetch all those accounts whose name is equal to the account name we are trying to insert.
    List<Account> accList=[select ID,NAme from account where Name in :accountNames];
    for(Account acc:Trigger.New){ //Iterate over the new accounts which are getting inserted
        for(Account acc1:accList){ //Iterate over the duplicate accounts 
            if(acc.name==acc1.Name){ //Will compare the name
                acc.addError('Duplicate Name . account with name '+acc.Name +' already exist');
            }
        }
    }
	    
}
trigger AccTrg on Account (before insert) {
	
    List<Account>a = Trigger.New;
    for(Account acc:a)
    {
        if(acc.Phone ==''||acc.Phone==null)
        {
            acc.addError('phone is mandatory');
        }
    }
        
        
        
}
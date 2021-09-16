trigger Accname on Account (before insert) 
{
  List<Account> acclist = Trigger.new;
    for(Account acc:acclist)
    {
        if(acc.Industry =='Banking')
        {
            acc.Ownership = 'Private';
        }
    }
}
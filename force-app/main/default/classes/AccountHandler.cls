public class AccountHandler {
public static Account insertNewAccount(String acname)
  {
      if(acname!='')
      {
          try
          {
              Account a = new Account(Name = acname);
              insert a;
              System.debug('Account is created');
              return a;    
           }
          catch(Exception e)
          {
              System.debug('Account not created');  
              return null;
          }
      }
          else
          {
              return null;
          }
      }
}
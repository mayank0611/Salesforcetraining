public class ContactSearch {
   public static List<Contact> searchForContacts(String str1, String str2)
   {
      Contact [] con = [Select id , name from Contact where lastname=:str1 And MailingPostalCode =:str2];
      return con;
   }
}
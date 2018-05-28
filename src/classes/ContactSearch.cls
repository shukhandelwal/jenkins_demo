public class ContactSearch {
    
    public static List<Contact> searchForContacts(String last_name,String postal_code){
        
        List<Contact> c=[Select ID,Name from Contact where LastName=:last_name And MailingPostalCode=:postal_code];
        return c;
    }

}
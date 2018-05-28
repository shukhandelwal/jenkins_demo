public class ContactAndLeadSearch {
    
    public static List<List<SObject>> searchContactsAndLeads(String searchName){
        return [FIND :searchName IN NAME FIELDS  RETURNING Contact(Name),Lead(Name)];
    }

}
public class ContactSearch {
    
    public static List<Contact> searchForContacts( String searchLastName, String searchZipCode ){
        List<Contact> results = [SELECT Contact.ID, Contact.Name FROM Contact 
                                 WHERE LastName = :searchLastName 
                                 AND MailingPostalCode = :searchZipCode];
        
        return results;
    }

}
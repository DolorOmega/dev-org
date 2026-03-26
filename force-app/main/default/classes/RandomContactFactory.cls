public class RandomContactFactory {
    
    public static List<Contact> generateRandomContacts( Integer numOfContactsCreated, String contactLastName ) {
        
        List<Contact> contactsToCreate = new List<Contact>();
        
        for( Integer i = 0; i < numOfContactsCreated; i++ ) {
            String firstName = 'Test' + String.valueOf(i);
            Contact cont = new Contact( FirstName = firstName, LastName = contactLastName, AccountId = '0011Y00002HcQE7QAN' );
            contactsToCreate.add(cont);
        }
        
        insert contactsToCreate;
        return contactsToCreate;
        
    }

}
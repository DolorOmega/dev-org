public class ContactAndLeadSearch {
    
    public static List<List<SObject>> searchContactsAndLeads( String findFirstOrLastName ) {
        
        Contact con = new Contact( FirstName = 'Module', LastName = 'Smith', AccountId = '001i000000f2DgmAAE' );
        insert con;
        
        Lead lea = new Lead( FirstName = 'Modulo', LastName = 'Smith', Company = 'Apex Module in Trailhead');
        insert lea;
        
        List<List<SObject>> results = [FIND :findFirstOrLastName IN ALL FIELDS
                                      	RETURNING
                                      		Contact (Id, Name WHERE FirstName LIKE :findFirstOrLastName
                                                    	OR LastName LIKE :findFirstOrLastName),
                                      		Lead (Id, Name WHERE FirstName LIKE :findFirstOrLastName
                                                 	OR LastName LIKE :findFirstOrLastName)];
        
        return results;
            
    }

}
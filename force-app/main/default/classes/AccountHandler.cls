public class AccountHandler {
    
    public static Account insertNewAccount( String input ){
        if ( String.isEmpty(input) ) {
            return null;
        }
        
        Account acct = new Account();
        acct.Name = input;
        insert acct;
        
        return acct;

    }

}
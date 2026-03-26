trigger AccountAddressTrigger on Account (before insert, before update) {
    
    for( Account acct : Trigger.New ) {
        if( acct.Match_Billing_Address__c ) {
            acct.ShippingPostalCode = acct.BillingPostalCode;
        }       
    
    }
    
}
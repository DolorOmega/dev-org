@isTest
public class TestVerifyDate {
    
    @isTest 
    static void testCheckDates(){
        Date d1 = Date.newInstance( 2017, 12, 1 );
        Date d2 = Date.newInstance( 2017, 12, 25 );
        Date d3 = Date.newInstance( 2018, 1, 30 );
        
        Date result1 = VerifyDate.CheckDates( d1, d2 );
        System.assertEquals( d2, result1 );
        
        Date result2 = VerifyDate.CheckDates( d1, d3 );
        System.assertNotEquals( d3, result2 );
        
    }
    
    @isTest 
    static void testDateWithin30Days(){
        Date d1 = Date.newInstance( 2017, 12, 1 );
        Date d2 = Date.newInstance( 2017, 12, 25 );
        Date d3 = Date.newInstance( 2017, 12, 30 );
        
        Boolean result1 = VerifyDate.DateWithin30Days(d1, d2);
        System.assertEquals(TRUE, result1);
        
        Boolean result2 = VerifyDate.DateWithin30Days(d1, d3);
        System.assertEquals(TRUE, result2);
        
    }
        
    @isTest 
    static void testSetEndOfMonthDate(){
        Date d1 = Date.newInstance( 2017, 12, 1 );
        Date d31 = Date.newInstance( 2017, 12, 31 );
        
        Date result = VerifyDate.SetEndOfMonthDate(d1);
        System.assertEquals(d31, result);
        
    }

}
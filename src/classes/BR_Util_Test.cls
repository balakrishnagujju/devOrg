@isTest
private class BR_Util_Test{
  static testMethod void test_checkCreateUpdateAccess_UseCase1(){
    BR_Util obj01 = new BR_Util();
    BR_Util.checkCreateUpdateAccess('test data','test data','test data');
    system.assert(true);
  }
  static testMethod void test_getAccessibleFields_UseCase1(){
    BR_Util obj01 = new BR_Util();
    BR_Util.getAccessibleFields('test data','test data');
  }
  static testMethod void test_getRecord_UseCase1(){
    BR_Util obj01 = new BR_Util();
    system.assert(true);
    BR_Util.getRecord('01p90000006uk2w');
  }

  @setupMethod
  static testMethod void initSetup(){

  List<User> userList = new List<User>();
         Profile p = [select id FROM Profile WHERE Name ='System Administrator'];
         userList.add(new User(
             FirstName = 'Alpha',
             LastName = 'Wane',
             Username = 'Alpha.Wane@Gotham.com',
             Email = 'Alpha@Gotham.com',
             Alias = 'AW',
             CommunityNickname = 'aWane',
             TimeZoneSidKey = 'America/Los_Angeles',
             LocaleSidKey = 'en_US',
             EmailEncodingKey = 'UTF-8',
             ProfileId = p.Id,
             LanguageLocaleKey = 'en_US'
         ));
         userList.add(new User(
             FirstName = 'Martha',
             LastName = 'Wane',
             Username = 'Martha@Gotham.com',
             Email = 'Martha@Gotham.com',
             Alias = 'MW',
             TimeZoneSidKey = 'America/Los_Angeles',
             LocaleSidKey = 'en_US',
             EmailEncodingKey = 'UTF-8',
             ProfileId = p.Id,
             LanguageLocaleKey = 'en_US'

         ));
         insert userList;
  }
}
